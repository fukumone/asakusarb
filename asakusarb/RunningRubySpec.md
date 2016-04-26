## RubySpecの実行

[RubySpec](RubySpec.html)の動かしかたを解説します。あらかじめ[RubySpecGettingStarted](RubySpecGettingStarted.html)は済ませておいてください。

### 基本的な動かしかた

    $ cd /path/to/rubyspec
    $ mspec

デフォルトだと、PATHに入っているrubyコマンドをターゲットにして実行します。

### Ruby 1.9 をターゲットにしてrubyspecを実行する

だいたい [http://rubyspec.org/wiki/rubyspec/Ruby\_19\_Issues](http://rubyspec.org/wiki/rubyspec/Ruby_19_Issues) に書かれているので、一読したほうがよい。以下は、実際にやってみたまとめ。

  - target(-t) オプションを与えると、他の実装を試せます。フルパスを渡せば指定したrubyをターゲットにrubyspcを実行します。詳細は mspec --help。

1.9はまだまだspecの整備が足りてないので、いろいろ落ちる。で、そういうものを tag として記録している。 そのため、以下のように 1.8 気分で rubyspec を実行すると盛大に落ちて心が折れそうになる。

    $ mspec -tr19 # PATHにある、'ruby1.9'という名前の実行ファイルをターゲットにする
    $ mspec --target /path/to/your/ruby19 # $HOMEにruby19みたいな名前でインストールしてる場合など

### 部分的にRubySpecを実行する

ファイルやディレクトリを指定すると、部分的に実行できるので、問題を解決するのに使ってね。

    $ mspec -tr19 core # 組込ライブラリのspecだけを実行
    $ mspec -tr19 library/net/http # 標準添付のNet::HTTPのspecをまとめてだけを実行
    $ mspec -tr19 language/def_spec.rb # 言語使用のdefのspecだけを実行

#### (参考) ディレクトリの大まかな構造

    +- language ... 言語仕様
    +- core ... 組込ライブラリ
    +- library ... 標準添付ライブラリ
    +- optional ... なんかffiのspecがある

#### (豆知識) ci サブコマンドとタグ

ci サブコマンドで実行すると、「落ちないはずのスペック」(fatalとかcritialとかのtagが指定されてない)だけが実行されるようになる。

    $ mspec ci -tr19 # PATHにある、'ruby1.9'という名前の実行ファイルをターゲットにする
    $ mspec ci --target /path/to/your/ruby19 # $HOMEにruby19みたいな名前でインストールしてる場合など

これで落ちるものは、タグをつけて脇に置いとくか、specを直すか、Rubyl 1.9のバグか、ということを判断するーーと、ここまで書いて、仕様って何だwwww という思いに駆られてきた -- kakutani

タグをつけたものは、rubyspecのtagsディレクトリの下に保存されてる。 ちなみに 2009/09/30時点では:

    13:26 kakutani: $ find tags/1.8 -type f| wc -l master[~/git/rubyspec]
    13:26 kakutani: 1
    13:27 kakutani: find tags/1.9 -type f| wc -l master[~/git/rubyspec]
    13:27 kakutani: 390

これはwwwww

