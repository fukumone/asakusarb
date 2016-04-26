## rvm

Ruby Version Manager。rvm use mput!

- [http://rvm.beginrescueend.com/](http://rvm.beginrescueend.com/)
- [http://github.com/wayneeseguin/rvm](http://github.com/wayneeseguin/rvm)

## rvm のインストール

    $ gem install rvm
    $ rvm-install
    $ echo 'if [-s "$HOME/.rvm/scripts/rvm"] ; then source "$HOME/.rvm/scripts/rvm" ; fi' >> ~/.[bash|zsh]rc

## rvm を最新に更新する

    $ rvm get head

## アップデートしたrvmの再読み込み

    $ rvm reload

## インストール可能なRuby実装の一覧を見る

    $ rvm list known

## rvm でRubyをインストール

    $ rvm install 1.9.2 [--head]

- "--head"をつけるとリポジトリの先っちょを持ってくる
- "-C"でコンパイルオプションを渡せる

## rvmでインストールしたRubyの一覧を見る

    $ rvm list

## rvmでインストールしたRubyを使う

    $ rvm use 1.9.2

## rvmでインストールされているRuby全部でスクリプトを実行

    $ rvm [do] hoge.rb

or

    $ rvm ruby hoge.rb

rubyの前にバージョンを指定すると、そのバージョンだけ実行される

## gemsets を作る

    $ rvm gemset create hoge

## shyouhei/ruby の先っちょを持ってくる

    rvm install shyouhei

## さんこう

- [http://d.hatena.ne.jp/takkan\_m/20091006/1254834355](http://d.hatena.ne.jp/takkan_m/20091006/1254834355)
- [http://d.hatena.ne.jp/Yoshiori/20090929/1254231207](http://d.hatena.ne.jp/Yoshiori/20090929/1254231207)
- [http://twitter.com/wayneeseguin/statuses/6048490750](http://twitter.com/wayneeseguin/statuses/6048490750)

## Nov 26, 2009 From: shintaro.kakutani@g...

### 1\_8\_branch の先っちょをもってくる

のって、現状では対応してないんですよね?

[http://svn.ruby-lang.org/cgi-bin/viewvc.cgi/branches/ruby\_1\_8/](http://svn.ruby-lang.org/cgi-bin/viewvc.cgi/branches/ruby_1_8/)

rvm のオプションには rev と tag はあるけど、branch は無いもんな……。

