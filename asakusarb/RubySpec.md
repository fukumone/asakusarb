## RubySpec

Yuguiさんが[[ruby-core:25707](http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-core/25707)]で、RubySpecについて"Ruby 1.9.2 must pass before release"とアナウンスしていたので、Rubyの開発になにか絡んでいきたいasakusa.rbは興味と関心を持っています。

公式サイトは [http://rubyspec.org/](http://rubyspec.org/) です。それなりにまとまっているので参考になるのでどうぞ。平易な英語で書かれています。

作業は大まかに次のような流れになります。

## 0. nahiさんの書きおき

1.9.2 がrubyspecを通す意味って?

- 仮説1: 各platformでCRubyが動くこと? → それtest-allで
- 仮説2: CRubyが他の実装に対してのreference実装となるため? → 他の実装で1.9に付いてきてるところってあるの?

未来の2のためかなあ、とkakutaniは思いますが、こんど yugui さんに聞いてみよう。

## 1. [RubySpecGettingStarted](RubySpecGettingStarted.html)

mspec,rubyspec,[rvm](rvm.html)を用意します(rvmはオプション)。

## 2. [RunningRubySpec](RunningRubySpec.html)

mspecを使ってrubyspecを実行するコツなどをまとめています。

## 3. [ProblemDeterminationForRubySpec](ProblemDeterminationForRubySpec.html) (最初の難関)

かくも悩ましい問題判別の世界へようこそ!

## 4. [ContributingToRubySpec](ContributingToRubySpec.html)

RubySpecを修正できそうだったら、パッチを書いてcontributeしよう!

ちなみに、asakusa.rbでは、1.9のRubySpecを対象に作業しています。  
Ruby1.8をターゲットにしたRubySpecについては、以下のページを参考にしてください(あまりまとまっていません)。

- [RubySpecWIP](RubySpecWIP.html)
- [74](74.html)

以下は、メールのログです。

* * *

## Oct 21, 2009 From: shintaro.kakutani@g...

かくたにです。

昨日のAsakusa.rbでは皆さんおつかれさまでした。  
なひさん、郡司さんお土産ありがとうございます!

redmine.ruby-lang.orgにRubySpecのトラッカーがあったほうがいいと  
要望を出したらYuguiさんが対応してくれました。  
[http://redmine.ruby-lang.org/issues/show/2239](http://redmine.ruby-lang.org/issues/show/2239)

これでRubySpecのことで悩んでも[Bug]で登録しなくて済むようになるので、  
悩んだらredmine経由で日本語で相談しましょう :)

* * *

KAKUTANI Shintaro  
[http://kakutani.com](http://kakutani.com)

## Oct 21, 2009 From: nakahiro@g...

2009/10/21 KAKUTANI Shintaro \<shintaro.kakutani@g...\>:

> 昨日のAsakusa.rbでは皆さんおつかれさまでした。 なひさん、郡司さんお土産ありがとうございます!

いえー。また伺いまーす。

> これでRubySpecのことで悩んでも[Bug]で登録しなくて済むようになるので、 悩んだらredmine経由で日本語で相談しましょう :)

どこでしょ？remineわからん。。。

## Oct 21, 2009 From: shintaro.kakutani@g...

かくたにです。

[http://redmine.ruby-lang.org/projects/ruby-19/issues/new](http://redmine.ruby-lang.org/projects/ruby-19/issues/new)  
の、「トラッカー」のドロップダウンが、  
これまでは「Bug」と「Feature」の2つだったのですが、  
ここに「RubySpec」が増えてます。

1.8にも増えたみたいです  
[http://redmine.ruby-lang.org/projects/ruby-18/issues/new](http://redmine.ruby-lang.org/projects/ruby-18/issues/new)

2009/10/21 NAKAMURA, Hiroshi \<nakahiro@g...\>:

> 2009/10/21 KAKUTANI Shintaro \<shintaro.kakutani@g...\>:
> 
> > 昨日のAsakusa.rbでは皆さんおつかれさまでした。 なひさん、郡司さんお土産ありがとうございます!
> 
> いえー。また伺いまーす。
> 
> > これでRubySpecのことで悩んでも[Bug]で登録しなくて済むようになるので、 悩んだらredmine経由で日本語で相談しましょう :)
> 
> どこでしょ？remineわからん。。。
> 
> - -
> 
> archive-\> [http://qwik.jp/asakusarb/RubySpec.html](http://qwik.jp/asakusarb/RubySpec.html)ML-\> asakusarb@q...
* * *

KAKUTANI Shintaro  
[http://kakutani.com](http://kakutani.com)

## Oct 21, 2009 From: nakahiro@g...

2009/10/21 KAKUTANI Shintaro \<shintaro.kakutani@g...\>:

> [http://redmine.ruby-lang.org/projects/ruby-19/issues/new](http://redmine.ruby-lang.org/projects/ruby-19/issues/new)の、「トラッカー」のドロップダウンが、 これまでは「Bug」と「Feature」の2つだったのですが、 ここに「RubySpec」が増えてます。

おお！発見しました。「トラッカー」とは、そういうことなんですね。

トラッキングするfeedを増やさないとなのかな、と思ったのですが、勘違いでした。

