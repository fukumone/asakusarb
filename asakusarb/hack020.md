## 第20回Asakusa.rb(2009-10-06)

## Oct 2, 2009 From: shintaro.kakutani@g...

かくたにです。20回ですよ!!

### 日時

2009/10/06 19:30 -

### 場所

永和システムマネジメント 東京支社  
[http://www.esm.co.jp/company/map\_tokyo.html](http://www.esm.co.jp/company/map_tokyo.html)

### ネタ

ささださんが1.9でRailsのベンチマークを取りたいとのことなので、  
それに向いたアプリをどうにかしたくありませんか?

メモリをいっぱい使うようなのがいいんですよね? \> ささださん

1.9で動いたほうがいいだろうから、シンプルなアプリにデータをいっぱい投入して  
表示させるとかするのがいいんですかねえ。

redmineとかradientは1.9で動かすのが大変そう。

## Oct 2, 2009 From: ronnie@d...

松田です。

20回わーい！

On Fri, 2 Oct 2009 00:02:55 +0900  
KAKUTANI Shintaro \<shintaro.kakutani@g...\> wrote:

> ささださんが1.9でRailsのベンチマークを取りたいとのことなので、 それに向いたアプリをどうにかしたくありませんか?

そうですね。Railsのやつ、何週か持ち越しになってたけど、  
そろそろやりたいですよね。  
ちなみに、例によって以前Wycatsに「ベンチとかどうやってんの？」  
って訊いたときは、なんかscaffoldとかでサクッと作ったやつに  
ちょろっとデータ入れててきとうに試験してるだけ、って言ってた  
ような気がします。

今回もそれでいいならそれでもいいんですけど、今回の目的から言うと  
メモリをいっぱい使うぐらいいっぱいDBにレコードを登録しなくちゃ  
いけなくなって、そうするとRubyよりもDBのIOのほうがボトルネックに  
なっちゃうんじゃないかなぁ、という懸念があります。

なので、多少は複雑なアプリのほうがいいのかなぁ、と思います。

* * *

Akira Matsuda \<ronnie@d...\>

## Oct 5, 2009 From: shintaro.kakutani@g...

そういえば明日は第20回 Asakusa.rb です。

2009/10/2 Akira Matsuda \<ronnie@d...\>:

> なので、多少は複雑なアプリのほうがいいのかなぁ、と思います。

けっきょく見当つかないので  
[http://www.opensourcerails.com/](http://www.opensourcerails.com/)  
から1.9で動きそうなのをさがす??

## Oct 6, 2009 From: shintaro.kakutani@g...

今日、雨ふっちゃったけど、来るひといます?

2009/10/5 KAKUTANI Shintaro \<shintaro.kakutani@g...\>:

> そういえば明日は第20回 Asakusa.rb です。
> 
> 2009/10/2 Akira Matsuda \<ronnie@d...\>:
> 
> > なので、多少は複雑なアプリのほうがいいのかなぁ、と思います。
> 
> けっきょく見当つかないので[http://www.opensourcerails.com/](http://www.opensourcerails.com/)から1.9で動きそうなのをさがす??
## Oct 6, 2009 From: ronnie@d...

あれ？あ、参加します、って言ってなかったですね。  
参加したいです。

* * *

Akira Matsuda \<ronnie@d...\>

## Oct 6, 2009 From: shintaro.kakutani@g...

かくたにです。

あ、そうそう。asakusa.rbはエンジンかかるのが遅いのですが、  
タイムボックスにしたいです。

19:30開始で21:30終了予定、最長でも22:00退出という運用にしたいです :\<

ご協力よろしくおねがいします

2009/10/6 Akira Matsuda \<ronnie@d...\>:

> あれ？あ、参加します、って言ってなかったですね。 参加したいです。
> 
> - -
> 
> Akira Matsuda \<ronnie@d...\>
> 
> - -
> 
> archive-\> [http://qwik.jp/asakusarb/hack020.html](http://qwik.jp/asakusarb/hack020.html)ML-\> asakusarb@q...
* * *

KAKUTANI Shintaro  
[http://kakutani.com](http://kakutani.com)

## Oct 6, 2009 From: takkanm@g...

三村です。参加します。

今日は、Rails大会でいいんでしょうか?

## Oct 6, 2009 From: shintaro.kakutani@g...

2009/10/6 \<takkanm@g...\>:

> 今日は、Rails大会でいいんでしょうか?

と、認識しております。時間つなぎにrubyspecその後みたいな話もできるお(キリッ

## Oct 6, 2009 From: gunjisatoshi@g...

郡司です。

また遅れそうですが参加したいです。

09/10/06 KAKUTANI Shintaro \<shintaro.kakutani@g...\>:

> 今日、雨ふっちゃったけど、来るひといます?
> 
> 2009/10/5 KAKUTANI Shintaro \<shintaro.kakutani@g...\>:
> 
> > そういえば明日は第20回 Asakusa.rb です。
> > 
> > 2009/10/2 Akira Matsuda \<ronnie@d...\>:
> > 
> > > なので、多少は複雑なアプリのほうがいいのかなぁ、と思います。
> > 
> > けっきょく見当つかないので[http://www.opensourcerails.com/](http://www.opensourcerails.com/)から1.9で動きそうなのをさがす??
> - -
> 
> archive-\> [http://qwik.jp/asakusarb/hack020.html](http://qwik.jp/asakusarb/hack020.html)ML-\> asakusarb@q...
## Oct 6, 2009 From: ronnie@d...

On Tue, 6 Oct 2009 15:34:06 +0900  
KAKUTANI Shintaro \<shintaro.kakutani@g...\> wrote:

> あ、そうそう。asakusa.rbはエンジンかかるのが遅いのですが、 タイムボックスにしたいです。
> 
> 19:30開始で21:30終了予定、最長でも22:00退出という運用にしたいです :\<

そうですね。前回はさすがにちょっと遅くなりすぎた  
と思ってたところなので、賛成です。

* * *

Akira Matsuda \<ronnie@d...\>

## Oct 6, 2009 From: yoshiori@g...

ヨシオリです

すいません、仕事が終わらないので今日は不参加になっちゃいます  
ごめんなさい

On Tuesday, October 6, 2009, Akira Matsuda \<ronnie@d...\> wrote:

> あれ？あ、参加します、って言ってなかったですね。 参加したいです。
> 
> - -
> 
> Akira Matsuda \<ronnie@d...\>
> 
> - -
> 
> archive-\> [http://qwik.jp/asakusarb/hack020.html](http://qwik.jp/asakusarb/hack020.html)ML-\> asakusarb@q...
## Oct 6, 2009 From: shintaro.kakutani@g...

かくたにです。付き合いわるくてすみませんでした。

記念すべき第20回もgdgdな感じでした :)  
開催時間は、19:30 - 22:00過ぎぐらいまででした。

## Ruby1.9でのRailsベンチ

- 1.9で動かせそうな、おもちゃじゃないRailsアプリは依存するgemとかが1.9で動かなかったりして大変だった
- Railsアプリでメモリを喰うのはRailsそのものだから、まずはhello worldでもいいんじゃないか(Jeremy Kemperメソッド)
- Railsの先っちょをa\_matsudaがRuby 1.9で動かそうとして動かなかったのを直そうとしていたら時間切れ

今回はあんまりko1さんのお役に立てるかんじではありませんでした。

## 成果っぽいもの

- moro: [http://gist.github.com/202951](http://gist.github.com/202951) をつくった
- takkanm: [ruby-dev:39439] #2179[![create](.theme/i/new.png)](.new?t=Bug)
- kakutani: [http://qwik.jp/asakusarb/RubySpecWIP.html](http://qwik.jp/asakusarb/RubySpecWIP.html) を整理した。rvmに挫折した

## 宿題

- railsのmasterをrubyのtrunkで動かすための手順をまとめたいなあ

以上。

## Oct 7, 2009 From: ronnie@d...

松田です。

なんだかボケボケしててすみませんでした。

On 2009/10/06, at 23:43, KAKUTANI Shintaro wrote:

> ## Ruby1.9でのRailsベンチ
> 
> - 1.9で動かせそうな、おもちゃじゃないRailsアプリは依存する
> 
> gemとかが1.9で動かなかったりして大変だった
> 
> - Railsアプリでメモリを喰うのはRailsそのものだから、まずは
> 
> hello worldでもいいんじゃないか(Jeremy Kemperメソッド)
> 
> - Railsの先っちょをa\_matsudaがRuby 1.9で動かそ
> 
> うとして動かなかったのを直そうとしていたら時間切れ

動かなかったっていうのは、つまり要約すると、  
この前覚えたrake devでRailsアプリを作ろうと思ったけど  
なんか動かなかったからなんだろうと思って調べてたけど  
よく考えたらこの前のBugmashで見たパッチを当てたら  
直るんじゃないかと思って当ててみたら直ったので  
来週からは今度こそ進められそう、という感じです。

- -

Akira Matsuda\<ronnie@d...\>

## Oct 11, 2009 From: l.g.chin@g...

ちょっと大きいRailsアプリとして、Gitoriousのことを思いだした。

[http://gitorious.org/gitorious](http://gitorious.org/gitorious)

今年の前半からgitorious.orgはRuby 1.9で動いているらしい

[http://theexciter.com/a-late-note-about-recent-gitorious-developments.html](http://theexciter.com/a-late-note-about-recent-gitorious-developments.html)

