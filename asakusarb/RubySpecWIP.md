## RubySpec作業中

[RubySpec](RubySpec.html)で調査してみたもののリスト。[RedMine](http://rubyspec.org/projects/rubyspec/issues)に登録したものは消していこう。

## ターゲット: 1.8.7

### ruby-devで相談してみた

- library/bigdecimal/to\_i\_spec.rb
- library/bigdecimal/to\_int\_spec.rb

  - ちょっとしらべた。1.8.6から1.8.7とtrunkで挙動かわってる気がする -\> [ruby-dev:39374

- library/enumerator/next\_spec.rb

  - Enumerator#next で StopIteration 例外が発生している enum に対してさらに next を呼ぶと最初に戻ってる。これはtrunkの未バックポート? それとも仕様?
  - ↑ 勇気を出して聞いてみたよ! -\> [[ruby-dev:39413]](http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-dev/39413)

### ちょっと見ただけだとわからなかった。ruby-devで相談する?

#### library/complex/numeric

- library/complex/numeric/angle\_spec.rb
- library/complex/numeric/arg\_spec.rb
- library/complex/numeric/polar\_spec.rb

これら3つのspecは、redmineの [http://redmine.ruby-lang.org/issues/show/1715](http://redmine.ruby-lang.org/issues/show/1715) と関係あるっぽいけどわかんない。

↑ #1715が1.8.7p174でも修正されてない(というかチケット閉じられてる)ので、実行をスキップしても:

[http://github.com/rubyspec/rubyspec/blob/master/shared/complex/numeric/arg.rb](http://github.com/rubyspec/rubyspec/blob/master/shared/complex/numeric/arg.rb)

の35行目で止まっちゃう("This was established in r23960"だそうな)。

#### library/mathn/{bignum,fixnum}/exponent\_spec.rb

- library/mathn/bignum/exponent\_spec.rb
- library/mathn/fixnum/exponent\_spec.rb

これらの「#\*\*」のspecは r25243だと通る。バージョンの問題? ruby1.8だと正しい挙動はどれだ??

#### library/conditionvariable/broadcast\_spec.rb

broadcast\_spec 単品で動かすと通るけど、他と一緒に動かすと通らないことがある?(通るときもある?)

