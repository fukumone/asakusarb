require 'esa'
require 'json'
require 'pp'
require 'pry'

class Importer
  def initialize(client)
    @client = client

    Dir.chdir('asakusarb')
    @file_names = Dir.glob("*.md").reject {|f| f.start_with?("_") }.sort
  end
  attr_accessor :client, :file_names

  def wait_for(seconds)
    (seconds / 10).times do
      print '.'
      sleep 10
    end
    puts
  end

  def import(dry_run: true)
    file_names.each do |file_name|

      title = File.basename(file_name)

      if title.start_with?("hack") && title != "hack000.md"
        num, date = File.read(file_name).lines.first.scan(/第?(\d+)(?:回|th) *Asakusa\.rb *\((.*)\)/).first
        binding.pry unless num || date
        date = Date.parse(date)
        hack_category = "/meetup/#{date.strftime("%Y/%m/%d")}"
        title = "第#{num}回"
      end

      params = {
        name:     title,
        category: "Imports/Qwik#{hack_category}",
        body_md:  File.read(file_name),
        wip:      false,
        message:  '[skip notice] Imported from Qwik Wiki',
        user:     'esa_bot' # 記事作成者上書き: owner権限が必要
      }

      if dry_run
        p({file_name: file_name, name: params[:name], category: params[:category]})
        next
      end

      print "[#{Time.now}] #{title} => "
      response = client.create_post(params)
      case response.status
      when 201
        puts "created: #{response.body["full_name"]}"
      when 429
        retry_after = (response.headers['Retry-After'] || 20 * 60).to_i
        puts "rate limit exceeded: will retry after #{retry_after} seconds."
        wait_for(retry_after)
        redo
      else
        puts "failure with status: #{response.status}"
        exit 1
      end
    end
  end
end

client = Esa::Client.new(
  access_token: ENV['ESA_API_TOKEN'],
  current_team: ENV['ESA_TEAM'] # 移行先のチーム名(サブドメイン)
)
importer = Importer.new(client)

# dry_run: trueで確認後に dry_run: falseで実際にimportを実行
importer.import(dry_run: true)
