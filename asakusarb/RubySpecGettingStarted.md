## RubySpecを動かすための準備

動かし方は、[http://rubyspec.org/wiki/rubyspec/Getting\_Started](http://rubyspec.org/wiki/rubyspec/Getting_Started) に書かれているんだけれど、以下でも補足しながら説明します。

[RubySpec](RubySpec.html)を動かすのに必要なものは、だいたい3つ。

- mspec
- rubyspec のソースコード
- [rvm](rvm.html) (オプション)

[rvm](rvm.html)は2009年8月頃にリリースされた、複数のRuby実装やバージョンを動かすためのgem(といいつつ、中身はほとんどシェルスクリプト)。

### mspecのインストール

**gemでインストールするのではなく** 、githubからcloneする。

    $ git clone git://github.com/rubyspec/mspec.git
    $ cd mspec
    $ rake package
    $ gem install pkg/mspec-x.y.z.gem
    $ mspec -v
    mspec x.y.z

ときどき更新されてバグが直ったり1.9対応が進んでいるので、最新版を使うようにしよう。

### rubyspecをclone

実行対象となるrubyspecをgithubからcloneします。

    $ git clone git://github.com/rubyspec/rubyspec.git

前掲のGetting Startedのドキュメントには安定板はタグをチェックアウトすると書いてあるけれど、masterブランチを対象に動かしちゃえばいいと思う。

### rvm の準備 (オプション)

[rvm](rvm.html)のページを参考に使ってみてください。asakusa.rb的には「rvm use shyouhei」がおすすめ

