## 第17回Asakusa.rb(2009-09-08)

松田さん抜きで決行された、記念すべき回でした :)

### 日時

2009/09/08 19:30～22:00ぐらい

### 場所

永和システムマネジメント 東京支社[http://www.esm.co.jp/company/map\_tokyo.html](http://www.esm.co.jp/company/map_tokyo.html)

### 内容
> > 特にテーマがなければ、個人的にはSinatraで遊んでみたいです。
> 
> ursmは本業が盛り上ってるので参加はむつかしいと教えてもらいました。 アーリーアダプターだったので、参加してもらえると面白くなったと思うのですが。

結局、お忙しい中ウラシマさんにも参加いただきました :)

### 参加者

- 三村さん @takkanm
- ウラシマさん @ursm
- ヨシオリさん @yoshiori
- 郡司さん @gunjisatoshi

### Sinatraで書かれたブログツールScantyのソースを読む＆動かす＆Herokuにデプロイしてみる

- 次のエントリを参考に

  - [Sinatra ベースの軽量アプリいろいろ Scanty 編](http://blog.designrecipe.jp/2009/7/24/sinatra-scanty)

#### ソースコードの入手

- ソースはどこ？

  - [http://github.com/adamwiggins/scanty/tree/master](http://github.com/adamwiggins/scanty/tree/master)
- とりあえず git cloneしよう！

  - git clone git://github.com/adamwiggins/scanty.git
- 動作に必要なgemはsinatraだけ。まだ入ってなかったら入れよう

  - gem install sinatra --no-ri --no-rdoc
  - sinatra以外に必要なライブラリ(Markdown記法を実現するMaruku, データベースライブラリSequel, シンタックスハイライトライブラリSyntax)は、vendorディレクトリ以下に入っているのでインストール不要

#### 動かしてみよう！

- scantyディレクトリでruby main.rbと叩けばWebサーバが起動
- [http://localhost:4567/](http://localhost:4567/) にアクセスして動くことを確認

  - 違うポートで起動したいときはruby main.rb -p 8080とかする
  - その他のオプションはsinatra/main.rbを見てね

#### ソースコードを読む

- じゃあmain.rbから読んでいこうか
- Sinatraのコードを読むなら[チュートリアル](http://www.sinatrarb.com/intro-jp.html)も読んでおくと吉

##### configureブロック

- 起動時に１回だけ実行されるらしい
- Sequelで環境変数DATABASE\_URLが指定されていたらそこへ、設定されていなければsqlite://blog.dbへ接続

  - この書き方は定石？
- OpenStructクラスって何？

  - Rubyの標準添付ライブラリで、構造体を手軽に作れるらしいよ
  - [http://www.ruby-lang.org/ja/man/html/ostruct.html](http://www.ruby-lang.org/ja/man/html/ostruct.html)
  - しかし「Blog」という定数名はクラス名と混同するので、「BLOG」としたほうが良い？[コーディング規約](http://shugo.net/ruby-codeconv/codeconv.html)による？

##### errorブロック

- 例外を捕捉したときに実行されるらしい
- requestという変数はどこから来たの？

  - これは変数じゃなくてアクセサ
  - Sinatraのsinatra/base.rbで、class Base内に「attr\_accessor :env, :request, :response, :params」って定義があった

##### require 'post'って何だ

- Scantyのlib/post.rbにPostクラス(モデルクラス)の定義が書いてあって、それを読み込んでる
- post.rbはあとで読もう

##### helpersブロック

- ヘルパメソッドを定義するブロック。ここで定義したメソッドは、ルートハンドラ（あとで出てくるgetブロックやpostブロック）とかテンプレートとかから呼び出すことができる

##### layout 'layout'って何だ

- レイアウトの指定。レイアウトとは、他のテンプレートが表示されるたびに使われるテンプレートのこと
- デフォルトでlayoutという名前のテンプレートがレイアウトに指定されるので、これ必要？

##### ルートハンドラ（getブロックやpostブロック）

- HTTPの対応するメソッドで指定したURLにアクセスしたときの挙動を定義するブロック
- 「get '/'」は、そのサイトのトップにHTTPのGETメソッドでアクセスが来たときの挙動を定義する

  - 「posts = Post.reverse\_order(:created\_at).limit(10)」とあるので、モデルクラスPostで指定するデータベースを日付順で逆ソートし、上位10件を取ってきている
  - そして次の行「erb :index, :locals =\> { :posts =\> posts }, :layout =\> false」で、テンプレートとしてindex.erbを利用して、ローカル変数としてpostsを渡して、レイアウトを使わずに描画する、と指定している

    - Sinatra分かりやすい！
- get '/past/:year/:month/:day/:slug/'の「:year」ような「:」で始まるのは「名前つきパラメータ」。paramsハッシュでその値を参照できる

  - しかし「:year」も「:month」も「:day」も使ってないじゃん‥‥
  - 「:slug」って何だ

    - ブログの個別エントリのpermalinkを示す文字列のこと。はてなとかで「/20090908/p1」とかなる「p1」の部分ね
    - というか「post = Post.filter(:slug =\> params[:slug]).first」っていう実装になってる！これはひどい！
    - ブログ全体で同じslug名のエントリがあると、新しいエントリのほうが参照できなくなっちゃう。大変残念な実装。「p1」というslug名は絶対ダメ
  - 名前つきパラメータって正規表現でマッチする条件を指定できたりする？

    - できるみたい。[チュートリアル](http://www.sinatrarb.com/intro-jp.html)の「正規表現を使ったルート」参照。
- '/past/:year/:month/:day/:slug'を'/past/:year/:month/:day/:slug/'にリダイレクトしているのは何故？

  - URLの一番最後に「/」をつけてもつけなくても同じリソースにアクセスできるようにするため

    - そのまま表示するのでなくリダイレクトするのは、SEO対策でリソースを表示するpermalinkを固定したいから？
    - しかし統一するなら「/」をつけないほうにリダイレクトしたほうがよくね？
- '/rss'を'/feed'にリダイレクトしているのは何故？

  - RSSリーダーによってはフィードURLを「/rss」決めうちしているものがあるのかも？
  - atomを返すのにrssというのはどうよ
- '/past'が全エントリを表示しちゃう実装なのはどうよ

  - ページ数が増えてくると破綻しそう
  - Paginateのしくみはないの？

    - [sinatra-dm-paginate](http://github.com/malev/sinatra-dm-paginate/tree/master)というのがあるらしい

##### viewsテンプレート

- テンプレートファイルはデフォルトではviewsディレクトリに置く

  - 変更したい場合は[チュートリアル](http://www.sinatrarb.com/intro-jp.html)見てね
- レイアウトではyieldを書いておくとそこに差し込まれるみたい
- ここではHTMLの生成にはerbを、XMLの生成にはbuilderを使っているみたい
- フィードの取得がトップページでしかできない（index.erbにはフィード指定があるのにlayout.erbにはない）のはどうよ
- というかhaml使う？hamlで書き直してみる？

##### publicディレクトリ

- デフォルトでは静的なファイルをここに置いておけば参照できる

  - 変更したい場合は[チュートリアル](http://www.sinatrarb.com/intro-jp.html)見てね

##### モデルクラスpost.rb

- Sequel::Modelを使ってる
- あんまり特筆すべきところはないかな

  - to\_htmlメソッドの定義あたりでSyntaxでRubyのコードをハイライトしてたりMarukuでmarkdown記法に対応してたり

#### Scantyをいろいろいじってみる

##### deleteの実装

- さすがに削除できないのはどうよ
- とりあえずdeleteメソッドでエントリを削除する簡単な実装をしてみる

##### Ruby1.9で動かす

- Rails同様、マジックコメントの関係で日本語が厳しいみたい

#### Herokuにデプロイ

### その他雑談

- JRuby on Android
- Snow Leopard
- Gentoo Linux

### 終了後の雑談

- (RubyWorld Conferenceから戻られたばかりの)かくたにさん、及川さんを加えて[HUB 上野しのばず通り店](http://r.tabelog.com/tokyo/A1311/A131101/13042447/)にて

  - Kinesisのキーボード
  - きれいなコード
  - RubyWorld Conference
  - ラブプラス

## Sep 2, 2009 From: shintaro@k...

かくたにです。

来週のAsakusa.rbの当日、私は [http://www.rubyworld-conf.org/](http://www.rubyworld-conf.org/) で  
松江にいっている(というか戻りの機内)ので、参加できません。  
松田さんも参加予定のはずで、ささださんは講演者です。

場所については、takkanmかursmが何とかしてくれれば何とかなると  
思うのですが、いかがでしょう？

個人的には、毎週火曜日はAsakusa.rbの日、とゆーことで  
開催してもらえるといいなー、と思ってます :)

自分の課題を黙々とやったり相談したり雑談したり、  
という時間の過ごしかたでもよいと思うのですが。

ご意見お待ちしております。

- -

{ :name: "Shintaro"[![create](.theme/i/new.png)](.new?t=%22KAKUTANI%22%2C),

    :email: shintaro.kakutani@g..., :website: http://kakutani.com/ }

## Sep 2, 2009 From: gunjisatoshi@g...

郡司です。

来週も参加希望です！  
特にテーマがなければ、個人的にはSinatraで遊んでみたいです。

場所についてはご迷惑でなければ引き続きお世話になりたいところですが、  
新規開拓もしたいところですねえ。

2009年9月2日1:16 KAKUTANI Shintaro \<shintaro.kakutani@g...\>:

> かくたにです。
> 
> 来週のAsakusa.rbの当日、私は [http://www.rubyworld-conf.org/](http://www.rubyworld-conf.org/) で 松江にいっている(というか戻りの機内)ので、参加できません。 松田さんも参加予定のはずで、ささださんは講演者です。
> 
> 場所については、takkanmかursmが何とかしてくれれば何とかなると 思うのですが、いかがでしょう？
> 
> 個人的には、毎週火曜日はAsakusa.rbの日、とゆーことで 開催してもらえるといいなー、と思ってます :)
> 
> 自分の課題を黙々とやったり相談したり雑談したり、 という時間の過ごしかたでもよいと思うのですが。
> 
> ご意見お待ちしております。
> 
> - -
> 
> { :name: "Shintaro"[![create](.theme/i/new.png)](.new?t=%22KAKUTANI%22%2C),
> 
> <dl>
> <dt>email</dt>
> <dd>shintaro.kakutani@g..., :website: <a class="external" href="http://kakutani.com/">http://kakutani.com/</a> }</dd>
> </dl>
> - -
> 
> archive-\> [http://qwik.jp/asakusarb/68.html](http://qwik.jp/asakusarb/68.html)ML-\> asakusarb@q...
## Sep 4, 2009 From: shintaro.kakutani@g...

かくたにです。

郡司さんが参加希望なんだけど、来週の火曜日ってどうですかね? \> takkanm

ursmは本業が盛り上ってるので参加はむつかしいと教えてもらいました。  
アーリーアダプターだったので、参加してもらえると面白くなったと思うのですが。

2009/9/2 Satoshi GUNJI \<gunjisatoshi@g...\>:

> 郡司です。
> 
> 来週も参加希望です！ 特にテーマがなければ、個人的にはSinatraで遊んでみたいです。
> 
> 場所についてはご迷惑でなければ引き続きお世話になりたいところですが、 新規開拓もしたいところですねえ。
> 
> 2009年9月2日1:16 KAKUTANI Shintaro \<shintaro.kakutani@g...\>:
> 
> > かくたにです。
> > 
> > 来週のAsakusa.rbの当日、私は [http://www.rubyworld-conf.org/](http://www.rubyworld-conf.org/) で 松江にいっている(というか戻りの機内)ので、参加できません。 松田さんも参加予定のはずで、ささださんは講演者です。
> > 
> > 場所については、takkanmかursmが何とかしてくれれば何とかなると 思うのですが、いかがでしょう？
> > 
> > 個人的には、毎週火曜日はAsakusa.rbの日、とゆーことで 開催してもらえるといいなー、と思ってます :)
> > 
> > 自分の課題を黙々とやったり相談したり雑談したり、 という時間の過ごしかたでもよいと思うのですが。
> > 
> > ご意見お待ちしております。
> > 
> > - -
> > 
> > { :name: "Shintaro"[![create](.theme/i/new.png)](.new?t=%22KAKUTANI%22%2C),
> > 
> > <dl>
> > <dt>email</dt>
> > <dd>shintaro.kakutani@g..., :website: <a class="external" href="http://kakutani.com/">http://kakutani.com/</a> }</dd>
> > </dl>
> > - -
> > 
> > archive-\> [http://qwik.jp/asakusarb/68.html](http://qwik.jp/asakusarb/68.html)ML-\> asakusarb@q...
> - -
> 
> archive-\> [http://qwik.jp/asakusarb/68.html](http://qwik.jp/asakusarb/68.html)ML-\> asakusarb@q...
* * *

KAKUTANI Shintaro  
[http://kakutani.com](http://kakutani.com)

## Sep 4, 2009 From: takkanm@g...

ミムラ aka takkanm です。

2009年9月4日11:10 KAKUTANI Shintaro \<shintaro.kakutani@g...\>:

> 郡司さんが参加希望なんだけど、来週の火曜日ってどうですかね? \> takkanm

今のところ、問題ないです。sinatraは初心者です。

以上です。

