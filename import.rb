require 'esa'
require 'json'
require 'pp'
require 'pry'

class Importer
  def initialize(client, wiki_repo_url)
    @client = client

    `git clone #{wiki_repo_url} wiki_data` unless File.exist? 'wiki_data'
    Dir.chdir('wiki_data')
    @file_names = Dir.glob('*.md')
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

      params = {
        name:     title,
        category: "Imports/GitHubWiki",
        body_md:  File.read(file_name),
        wip:      false,
        message:  '[skip notice] Imported from GitHub Wiki',
        user:     'esa_bot' # 記事作成者上書き: owner権限が必要
      }

      if dry_run
        pp params
        puts
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
  access_token: 'xxxxx',
  current_team: 'your-team-name' # 移行先のチーム名(サブドメイン)
)
importer = Importer.new(client, 'https://github.com/[organization]/[repo].wiki.git')

# dry_run: trueで確認後に dry_run: falseで実際にimportを実行
importer.import(dry_run: true)
