## 第126回Asakusa.rb(2011-10-02:CST)

## Oct 3, 2011 From: shintaro.kakutani@g...

昨年のRubyConf 2010 に引き続き(hack077[![create](.theme/i/new.png)](.new?t=hack077))、今年もRubyConf  
2011の会期中に、まつもとメンバーの宿泊しているスイートルームのリビングで Askausarb が開催されました ;)

速報としては、こんな感じで開催されました。 [http://picplz.com/user/kakutani/pic/t4cdr/](http://picplz.com/user/kakutani/pic/t4cdr/)

evanphx や tenderlove, drbrain も参加して、RubyConfに参加していた日本人のコミッタ陣 + まつもとメンバーとのあいだで  
いろんなことが議論されて、Ruby2.0の仕様のいくつかが决まったそうです。すごい。  
(↑このimplementors summitの言い出しっぺだった headius は言うだけ言って呑みに出掛けていってて欠席( tom\_enebo も).Bad jruby guys 2 baaad!

ちなみにこの日のビールやお菓子は、 **前日の夜のLT** で zenspider (seattle.rb) がruby\_parser のバグの懸賞金(1つ直したら$50)を  
n0kada が3つ直して得た現金で賄われました。

[http://blog.zenspider.com/2011/10/bug-bounty-scorecard.html](http://blog.zenspider.com/2011/10/bug-bounty-scorecard.html)  
フルタイムコミッタやばい。

seattle.rb にあこがれて、2008年に a\_matsuda と始めた Asakusa.rb が、こうやって Seattle.rb  
のコアメンバーの皆さんと  
一緒にhackする場となれたのは、ひとつのマイルストーンに到達したいんじゃないかなあ、と思ってじわじわ感動しています。

あわせて読みたい貴重な歴史的史料: [http://qwik.jp/asakusarb/hack000.html](http://qwik.jp/asakusarb/hack000.html)  
当時は、私も a\_matsuda も drbrain とはあまり面識がなくて、代わりに \_ko1 に聞いてもらったのでした。

日本に戻ったら、Asakusa.rb もまた rubyspec のときのような、Rubyの開発に貢献するような活動をしたいと思いました。

具体的には:

- redmine.ruby-lang.org を yugui から巻き取る件(じつはるびまの記事はまだ読んでないので詳細はわかってない)
- nahiメンバーが言ってた、標準ライブラリをgem化する話について、もうちょっと具体的に作業をしてみたい

という2点をどうにかしていきたいなあと思ってます。  
詳細は次回以降で。ちょっとだけircで話はしました。

    13:47 kakutani: 明日の朝、空港へしゅっぱつなのだ
    13:47 kakutani: そういえば、
    13:48 kakutani: 明日は家に帰りたいので参加できないんで、松田さんと話してたことをいうと
    13:48 takkanm: hoi
    13:48 kakutani: nahiさんがいってた、標準ライブラリをgemにはがしていく、をAsakusa.rbでやってはどうかという
    13:49 takkanm: o
    13:49 kakutani: マイナーなやつからコツコツやっていけばいいんじゃないかと
    13:49 ko1_ndk: どう進めるのが良いんですかね
    13:49 takkanm: RubySpec以来の作業が
    13:49 kakutani: そうそう
    13:49 kakutani: 具体的な作戦はまだないのですが、そこから話をしてみようかなあと
    13:49 ko1_ndk: Asakusa.rbで適当にリストをつくって実装して提案する？
    13:49 kakutani: ko1_ndk: ためしにやってみるところからやらないと、
    13:50 nurse: それよりredmineをやって欲しい感が
    13:50 ko1_ndk: そうですね
    13:50 kakutani: redmineは……私はちょっと無理なので……
    13:50 nurse: 政治的にアレですか
    13:50 ko1_ndk: まぁ、まつださんに redmine やってもらえばいいのではないか
    13:50 kakutani: redmineつらい……
    13:50 ko1_ndk: 角谷さんは gem
    13:51 kakutani: rubyconfのふんいきだと、"core-team"はRuby2.0モードに入りつつあるのかなーと思うので、
    13:51 kakutani: stdlibをgemにするとか忘れられそうですよね、と松田さんと話をしていました
    13:52 takkanm: redmineはMLに投げて、反応を見るのはどうですかねぇ。いつもの参加者でRedmineに興味があるorいじれる人っていうのがいない印象
    13:53 kakutani: takkanm: そうだねえ。ちょっと文面とかは考えないといけないと思うけど。松田さんは明日は参加するのかしらん
    13:53 nurse: なるほろり
    13:53 ko1_ndk: gem 化も提案に入ってるけど
    13:53 ko1_ndk: やる人が居ないと流れるので
    13:53 ko1_ndk: どうぞよろしく
    13:54 kakutani: ko1_ndk: ですよねえ > やる人がいない
    13:54 takkanm: nahiさん明日きたら、そこら辺を話してみようかと思います
    13:54 kakutani: みなさんgemをつかってないのに、その作業を押しつけるのもよくないし、昨日の #asakusarb
    みたいな議論とかをコミッタとかimplementorの皆さんにはやってもらいたい!!
    13:55 kakutani: まあ、最初だけやってみれば、rubyspecのmameさんみたいに、誰かすごい人がきて無双してくれるはずなんだ

