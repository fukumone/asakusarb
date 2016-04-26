## RubyKaigi2009スペシャル -Ruby 1.9.2 on Rails-

RubyKaigi2009の会期中にRuby 1.9.2 preview 1がリリースされた。  
[http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-list/46229](http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-list/46229)

そこで、Railsの先っちょをこの1.9.2で動かしてみたところ、いろいろと動かなかったので、 緊急Asakusa.rbということで、RubyKaigiの会場でなかださんにちょいと見ていただいた。

### Object#tryで\_\_send\_\_をalias\_methodしようとしたら落ちる件 [http://redmine.ruby-lang.org/issues/show/1788](http://redmine.ruby-lang.org/issues/show/1788)

[r24201](http://redmine.ruby-lang.org/repositories/diff/ruby-19?rev=24201)にて瞬殺。

### script/\*が実行できなくなった件 [https://rails.lighthouseapp.com/projects/8994/tickets/2921](https://rails.lighthouseapp.com/projects/8994/tickets/2921)

1.9.2から "." がLOAD\_PATHに含まれなくなったことによる影響だそうな。

### Ruby 1.9.2にバンドルされてるMiniTest 1.4.xでテストが動かない件 [https://rails.lighthouseapp.com/projects/8994/tickets/2922](https://rails.lighthouseapp.com/projects/8994/tickets/2922)

なんかこんな感じで動くようになった。

### delegateとかした場合にprotectedメソッドが呼び出せない件 [http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-dev/38835](http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-dev/38835)

これもすぐ直った。

ということで、少なくともこの時点(2009年7月)のRailsの2.3は、Ruby 1.9.2で動くようになりました。 **パッチモンスター恐るべし** ！  
そんなわけで、Ruby 1.9.2 on Railsを試してみようという方は、1.9.2 preview 1では動かないので、必ずtrunk版を使いましょう。

