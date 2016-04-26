## 第21回Asakusa.rb(2009-10-13)

## Oct 8, 2009 From: shintaro.kakutani@g...

10/13って開発者ミーティングの日([ruby-dev:39404] )だからko1さんには来てもらえないのか……。

そういえば RubyKaigiにも来てくれた Muhammed Aliさんが  
"The Ruby 19x Web Servers Booklet"というドキュメントを書いたみたいです。  
a survey of architectual choices & analysis of relative performance  
だそうな。60ページぐらい。後ろのほうにいろいろグラフのってました。  
[http://oldmoe.blogspot.com/2009/10/ruby-19x-web-servers-booklet.html](http://oldmoe.blogspot.com/2009/10/ruby-19x-web-servers-booklet.html)

## Oct 8, 2009 From: ko1@a...

KAKUTANI Shintaro wrote::

> 10/13って開発者ミーティングの日([ruby-dev:39404] )だからko1さんには来てもらえないのか……。

　この日は行けるかも．でもどうかな．よくわからないな（次の日英語でなんか  
しないといけないかもしれず）．

> そういえば RubyKaigiにも来てくれた Muhammed Aliさんが "The Ruby 19x Web Servers Booklet"というドキュメントを書いたみたいです。 a survey of architectual choices & analysis of relative performance だそうな。60ページぐらい。後ろのほうにいろいろグラフのってました。[http://oldmoe.blogspot.com/2009/10/ruby-19x-web-servers-booklet.html](http://oldmoe.blogspot.com/2009/10/ruby-19x-web-servers-booklet.html)

　英語！　誰か3行でまとめて．

　彼に言われてた Fiber の高速化を，学生がやってくれました．3倍くらい速く  
なった．

* * *

// SASADA Koichi at atdot dot net

## Oct 8, 2009 From: shintaro.kakutani@g...

かくたにです。

たまにはダイビルにお邪魔させていただくというのはいかがでしょうか?!

2009/10/8 SASADA Koichi \<ko1@a...\>:

> KAKUTANI Shintaro wrote::
> 
> > 10/13って開発者ミーティングの日([ruby-dev:39404] )だからko1さんには来てもらえないのか……。
> 
> 　この日は行けるかも．でもどうかな．よくわからないな（次の日英語でなんか しないといけないかもしれず）．
> 
> > そういえば RubyKaigiにも来てくれた Muhammed Aliさんが "The Ruby 19x Web Servers Booklet"というドキュメントを書いたみたいです。 a survey of architectual choices & analysis of relative performance だそうな。60ページぐらい。後ろのほうにいろいろグラフのってました。[http://oldmoe.blogspot.com/2009/10/ruby-19x-web-servers-booklet.html](http://oldmoe.blogspot.com/2009/10/ruby-19x-web-servers-booklet.html)
> 
> 　英語！　誰か3行でまとめて．

だれかwww

> 彼に言われてた Fiber の高速化を，学生がやってくれました．3倍くらい速く なった．

おおー。3倍!

* * *

KAKUTANI Shintaro  
[http://kakutani.com](http://kakutani.com)

## Oct 8, 2009 From: ronnie@d...

松田です。

On Thu, 8 Oct 2009 11:39:28 +0900  
KAKUTANI Shintaro \<shintaro.kakutani@g...\> wrote:

> > > そういえば RubyKaigiにも来てくれた Muhammed Aliさんが "The Ruby 19x Web Servers Booklet"というドキュメントを書いたみたいです。 a survey of architectual choices & analysis of relative performance だそうな。60ページぐらい。後ろのほうにいろいろグラフのってました。[http://oldmoe.blogspot.com/2009/10/ruby-19x-web-servers-booklet.html](http://oldmoe.blogspot.com/2009/10/ruby-19x-web-servers-booklet.html)
> > 
> > 　英語！　誰か3行でまとめて．
> 
> だれかwww

この本ではRuby 1.9で動くいろんなWEBサーバーのベンチをとったりする。  
昔はWEBrickしかなかったけどMongrelが登場して以降、いろんな早いWEBサーバーが出てきた。

Concurrencyの戦略については、マルチプロセルとかマルチスレッドとかその複合技とかいろいろある。  
WEBrickはあんまり負荷がでかいところで使うべきではない。  
Mongrelは、Concurrency戦略はWEBrickと変わらない割にはWERrickよりだいぶ速い。パーサーが他のいろんなサーバーたちにも再利用されてる。  
Thinはその名のとおりすっごい薄いglueみたいなもん。組み合わせるライブラリとかによってはめちゃめちゃ速いかもね。  
Passengerはセットアップも一番簡単だし、今や最良の選択肢になった。実はこのモデルだと大してスケールできないんだけど、でもまぁ、Railsも含めてRubyのWEBアプリなんてみんなシングルスレッドだからまぁそんなもんかな。

で、ベンチマーク。まずは静的ファイルがどれくらい捌けるか。PassngerはApacheとかNgnixのベンチにしかならないので対象外(たぶん最速。Nginxなら  
Thinの倍ぐらい速い)。  
小っちゃいファイルをいっぱい読ませる場合はThinがやや速い。ていうかグラフが基本的にWEBrickいじめ。  
すごいでっかいファイルをダウンロードする場合は、むしろWEBrickが速かったりする。Thinででかいファイルを処理しようとするといろいろあってメモリが溢れた。  
ついでに、Thin(というかEventMachne)には内部構造的な問題があって、10発以上のリクエストが一度にどばっと来たときに10個ずつに分けて捌いてくからえらく待たされる場合があるんだよね。  
ただし、どっちにしろ、静的ファイルだったらApacheとかNginxとかに処理させるべきで、RubyのWEBサーバーの仕事ではない。

Railsでhello world。どれもあんま変わんない。Thinが早くて、MongrelとPassengerが同じぐらい。  
Railsででっかいレスポンスを返させたりするとPassengerがわずかに一番手になったりする。あとPassengerはレスポンスがでかくてもメモリ使用量が安定してる。THinはひどい。

ということで、結論。  
1. 静的ファイルは、Nginxに、それからApacheに逃がせ  
2. Railsアプリを動かすぶんには、パフォーマンス的にはどのサーバーを使ってもほとんど一緒みたいなもん(WEBrickでさえもね！)。敢えて言うなら、一番お手軽なPassengerを使っとけばいいんじゃないかな。  
3. WEBサービスとかに使うんだったらThinでしょ。

ぜんぜん3行じゃなくてすいませんｗ  
ということで、Ruby 1.9そのものの話はまったくナシですね。  
とりあえず、35ページ目でどんなベンチマーク取ってるの？  
っていう一覧表が載ってて、Asakusa.rb的には  
すごく参考になります。

* * *

Akira Matsuda \<ronnie@d...\>

## Oct 8, 2009 From: shintaro.kakutani@g...

2009/10/8 Akira Matsuda \<ronnie@d...\>:

> ということで、Ruby 1.9そのものの話はまったくナシですね。

ちょwwww

## Oct 8, 2009 From: ko1@a...

　ささだです．

Akira Matsuda wrote::

> > > > そういえば RubyKaigiにも来てくれた Muhammed Aliさんが "The Ruby 19x Web Servers Booklet"というドキュメントを書いたみたいです。 a survey of architectual choices & analysis of relative performance だそうな。60ページぐらい。後ろのほうにいろいろグラフのってました。[http://oldmoe.blogspot.com/2009/10/ruby-19x-web-servers-booklet.html](http://oldmoe.blogspot.com/2009/10/ruby-19x-web-servers-booklet.html)
> > > 
> > > 　英語！　誰か3行でまとめて．
> > 
> > だれかwww
> 
> この本ではRuby 1.9で動くいろんなWEBサーバーのベンチをとったりする。 昔はWEBrickしかなかったけどMongrelが登場して以降、いろんな早いWEBサーバーが出てきた。
> 
> Concurrencyの戦略については、マルチプロセルとかマルチスレッドとかその複合技とかいろいろある。 WEBrickはあんまり負荷がでかいところで使うべきではない。 Mongrelは、Concurrency戦略はWEBrickと変わらない割にはWERrickよりだいぶ速い。パーサーが他のいろんなサーバーたちにも再利用されてる。 Thinはその名のとおりすっごい薄いglueみたいなもん。組み合わせるライブラリとかによってはめちゃめちゃ速いかもね。 Passengerはセットアップも一番簡単だし、今や最良の選択肢になった。実はこのモデルだと大してスケールできないんだけど、でもまぁ、Railsも含めてRubyのWEBアプリなんてみんなシングルスレッドだからまぁそんなもんかな。
> 
> で、ベンチマーク。まずは静的ファイルがどれくらい捌けるか。PassngerはApacheとかNgnixのベンチにしかならないので対象外(たぶん最速。Nginxなら Thinの倍ぐらい速い)。 小っちゃいファイルをいっぱい読ませる場合はThinがやや速い。ていうかグラフが基本的にWEBrickいじめ。 すごいでっかいファイルをダウンロードする場合は、むしろWEBrickが速かったりする。Thinででかいファイルを処理しようとするといろいろあってメモリが溢れた。 ついでに、Thin(というかEventMachne)には内部構造的な問題があって、10発以上のリクエストが一度にどばっと来たときに10個ずつに分けて捌いてくからえらく待たされる場合があるんだよね。 ただし、どっちにしろ、静的ファイルだったらApacheとかNginxとかに処理させるべきで、RubyのWEBサーバーの仕事ではない。
> 
> Railsでhello world。どれもあんま変わんない。Thinが早くて、MongrelとPassengerが同じぐらい。 Railsででっかいレスポンスを返させたりするとPassengerがわずかに一番手になったりする。あとPassengerはレスポンスがでかくてもメモリ使用量が安定してる。THinはひどい。
> 
> ということで、結論。 1. 静的ファイルは、Nginxに、それからApacheに逃がせ 2. Railsアプリを動かすぶんには、パフォーマンス的にはどのサーバーを使ってもほとんど一緒みたいなもん(WEBrickでさえもね！)。敢えて言うなら、一番お手軽なPassengerを使っとけばいいんじゃないかな。 3. WEBサービスとかに使うんだったらThinでしょ。
> 
> ぜんぜん3行じゃなくてすいませんｗ ということで、Ruby 1.9そのものの話はまったくナシですね。 とりあえず、35ページ目でどんなベンチマーク取ってるの？ っていう一覧表が載ってて、Asakusa.rb的には すごく参考になります。

　素晴らしい！

　というか，1.9 でこれだけ動かせるんだ．

* * *

// SASADA Koichi at atdot dot net

## Oct 9, 2009 From: l.g.chin@g...

Unicornが話にでなくて残念。

紹介記事： [http://tomayko.com/writings/unicorn-is-unix](http://tomayko.com/writings/unicorn-is-unix)  
本家： [http://unicorn.bogomips.org/](http://unicorn.bogomips.org/)

作者のEric Wongはgit-svnの開発者としても有名。  
DesignとPhilosophyのページも面白い。  
[http://unicorn.bogomips.org/PHILOSOPHY.html](http://unicorn.bogomips.org/PHILOSOPHY.html)  
[http://unicorn.bogomips.org/DESIGN.html](http://unicorn.bogomips.org/DESIGN.html)

ちなみに、Thin vs Unicorn: [http://cmelbye.github.com/2009/10/04/thin-vs-unicorn.html](http://cmelbye.github.com/2009/10/04/thin-vs-unicorn.html)

## Oct 12, 2009 From: ogijun@g...

うおお、defunktさまもUnicornについて書いてる!

[http://github.com/blog/517-unicorn](http://github.com/blog/517-unicorn)

On Fri, Oct 9, 2009 at 2:10 AM, Leonard Chin \<l.g.chin@g...\> wrote:

> Unicornが話にでなくて残念。
> 
> 紹介記事： [http://tomayko.com/writings/unicorn-is-unix](http://tomayko.com/writings/unicorn-is-unix)本家： [http://unicorn.bogomips.org/](http://unicorn.bogomips.org/)
> 
> 作者のEric Wongはgit-svnの開発者としても有名。 DesignとPhilosophyのページも面白い。[http://unicorn.bogomips.org/PHILOSOPHY.html](http://unicorn.bogomips.org/PHILOSOPHY.html)[http://unicorn.bogomips.org/DESIGN.html](http://unicorn.bogomips.org/DESIGN.html)
> 
> ちなみに、Thin vs Unicorn: [http://cmelbye.github.com/2009/10/04/thin-vs-unicorn.html](http://cmelbye.github.com/2009/10/04/thin-vs-unicorn.html)
* * *

ogijun

## Oct 13, 2009 From: ko1@a...

　ささだです．

　開発者ミーティングは昼に終わる予定です．

　で，今日の asakusa.rb ですが，東大，秋葉原拠点（秋葉原ダイビルの13F）  
でやろう，と言われてるんですが，それでいいでしょうか．

　うちは大丈夫．

KAKUTANI Shintaro wrote::

> 10/13って開発者ミーティングの日([ruby-dev:39404] )だからko1さんには来てもらえないのか……。
> 
> そういえば RubyKaigiにも来てくれた Muhammed Aliさんが "The Ruby 19x Web Servers Booklet"というドキュメントを書いたみたいです。 a survey of architectual choices & analysis of relative performance だそうな。60ページぐらい。後ろのほうにいろいろグラフのってました。[http://oldmoe.blogspot.com/2009/10/ruby-19x-web-servers-booklet.html](http://oldmoe.blogspot.com/2009/10/ruby-19x-web-servers-booklet.html)
* * *

// SASADA Koichi at atdot dot net

## Oct 13, 2009 From: shintaro.kakutani@g...

かくたにです。

では、久々にダイビルでおねがいします!

時間は19:30ぐらいからなのですが大丈夫でしょうか。

2009/10/13 SASADA Koichi \<ko1@a...\>:

> 　ささだです．
> 
> 開発者ミーティングは昼に終わる予定です．
> 
> で，今日の asakusa.rb ですが，東大，秋葉原拠点（秋葉原ダイビルの13F） でやろう，と言われてるんですが，それでいいでしょうか．
> 
> うちは大丈夫．
> 
> KAKUTANI Shintaro wrote::
> 
> > 10/13って開発者ミーティングの日([ruby-dev:39404] )だからko1さんには来てもらえないのか……。
> > 
> > そういえば RubyKaigiにも来てくれた Muhammed Aliさんが "The Ruby 19x Web Servers Booklet"というドキュメントを書いたみたいです。 a survey of architectual choices & analysis of relative performance だそうな。60ページぐらい。後ろのほうにいろいろグラフのってました。[http://oldmoe.blogspot.com/2009/10/ruby-19x-web-servers-booklet.html](http://oldmoe.blogspot.com/2009/10/ruby-19x-web-servers-booklet.html)
> - -
> 
> // SASADA Koichi at atdot dot net
> 
> - -
> 
> archive-\> [http://qwik.jp/asakusarb/hack021.html](http://qwik.jp/asakusarb/hack021.html)ML-\> asakusarb@q...
* * *

KAKUTANI Shintaro  
[http://kakutani.com](http://kakutani.com)

## Oct 13, 2009 From: ko1@a...

KAKUTANI Shintaro wrote::

> かくたにです。
> 
> では、久々にダイビルでおねがいします!
> 
> 時間は19:30ぐらいからなのですが大丈夫でしょうか。

　はい．そのつもりです．

* * *

// SASADA Koichi at atdot dot net

## Oct 13, 2009 From: shintaro.kakutani@g...

かくたにです。

……と、いうわけで今日は

- ダイビル13F
- 19:30から

です。永和じゃないのでお気をつけください。

参加するひと?

2009/10/13 SASADA Koichi \<ko1@a...\>:

> KAKUTANI Shintaro wrote::
> 
> > かくたにです。
> > 
> > では、久々にダイビルでおねがいします!
> > 
> > 時間は19:30ぐらいからなのですが大丈夫でしょうか。
> 
> 　はい．そのつもりです．
> 
> - -
> 
> // SASADA Koichi at atdot dot net
> 
> - -
> 
> archive-\> [http://qwik.jp/asakusarb/hack021.html](http://qwik.jp/asakusarb/hack021.html)ML-\> asakusarb@q...
* * *

KAKUTANI Shintaro  
[http://kakutani.com](http://kakutani.com)

## Oct 13, 2009 From: ronnie@d...

松田です。  
参加しまーす。  
ダイビルわーい。

On 2009/10/13, at 10:15, KAKUTANI Shintaro wrote:

> かくたにです。
> 
> ……と、いうわけで今日は
> 
> - ダイビル13F
> - 19:30から
> 
> です。永和じゃないのでお気をつけください。
> 
> 参加するひと?
## Oct 13, 2009 From: takkanm@g...

ミムラです。

参加しまーす。

2009年10月13日12:31 Akira Matsuda \<ronnie@d...\>:

> 松田です。 参加しまーす。 ダイビルわーい。
> 
> On 2009/10/13, at 10:15, KAKUTANI Shintaro wrote:
> 
> > かくたにです。
> > 
> > ……と、いうわけで今日は
> > 
> > - ダイビル13F
> > - 19:30から
> > 
> > です。永和じゃないのでお気をつけください。
> > 
> > 参加するひと?
> - -
> 
> archive-\> [http://qwik.jp/asakusarb/hack021.html](http://qwik.jp/asakusarb/hack021.html) ML-\> asakusarb@q...
## Oct 13, 2009 From: ko1@a...

KAKUTANI Shintaro wrote::

> かくたにです。
> 
> ……と、いうわけで今日は
> 
> - ダイビル13F
> - 19:30から
> 
> です。永和じゃないのでお気をつけください。

　おなか空いたので，私はご飯を食べながら参加します．

* * *

// SASADA Koichi at atdot dot net

## Oct 13, 2009 From: shintaro.kakutani@g...

すみません……。仕事方面でちょっと遅れるかもしれません。 かくたに

## Oct 13, 2009 From: takkanm@g...

みむらです。  
すみません。私も仕事で若干遅れます。

## Oct 13, 2009 From: ogijun@g...

もう9時ですが、まだいますか?  
近くにいるから、行こうかなあ。

On Tuesday, October 13, 2009, \<takkanm@g...\> wrote:

> みむらです。 すみません。私も仕事で若干遅れます。
> 
> - -
> 
> archive-\> [http://qwik.jp/asakusarb/hack021.html](http://qwik.jp/asakusarb/hack021.html)ML-\> asakusarb@q...
* * *

ogijun

## Oct 13, 2009 From: takkanm@g...

まだ、やってますよ

2009年10月13日20:54 Junya Ogino \<ogijun@g...\>:

> もう9時ですが、まだいますか? 近くにいるから、行こうかなあ。
> 
> On Tuesday, October 13, 2009, \<takkanm@g...\> wrote:
> 
> > みむらです。 すみません。私も仕事で若干遅れます。
> > 
> > - -
> > 
> > archive-\> [http://qwik.jp/asakusarb/hack021.html](http://qwik.jp/asakusarb/hack021.html)ML-\> asakusarb@q...
> - -
> 
> ogijun
> 
> - -
> 
> archive-\> [http://qwik.jp/asakusarb/hack021.html](http://qwik.jp/asakusarb/hack021.html)ML-\> asakusarb@q...
