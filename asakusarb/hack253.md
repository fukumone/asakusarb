## 第253回Asakusa.rb (2014-03-25)

## Mar 25, 2014 From: takkanm@g...

今日は 253 回目のミートアップなんですが、わたし体調不良で不参加です。

どこか会場提供をお願いします。

## Mar 25, 2014 From: kuni-ito@e...

伊藤です。

上野永和でドアマンできます。  
今日は上野開催でいかがでしょうか。

2014年3月25日 7:35 \<takkanm@g...\>:

> 今日は 253 回目のミートアップなんですが、わたし体調不良で不参加です。
> 
> どこか会場提供をお願いします。
## Mar 25, 2014 From: gunjisatoshi@g...

郡司です。

会場提供いつもありがとうございます。  
何事もなければ参加の予定です。

3/30(日)発行予定のRubyist Magazine 0046号に関する諸作業をします。

2014年3月25日 7:49 伊藤邦彦 \<kuni-ito@e...\>:

> 伊藤です。
> 
> 上野永和でドアマンできます。 今日は上野開催でいかがでしょうか。
> 
> 2014年3月25日 7:35 \<takkanm@g...\>:
> 
> > 今日は 253 回目のミートアップなんですが、わたし体調不良で不参加です。
> > 
> > どこか会場提供をお願いします。
> - -
> 
> archive-\> [http://qwik.jp/asakusarb/hack253.html](http://qwik.jp/asakusarb/hack253.html)ML-\> asakusarb@q...
## Mar 25, 2014 From: shibata.hiroshi@g...

柴田です。

参加します。

るびまのランキング作成した後は Rails でリクエストのパラメータに応じて  
ビューを変えたい、というときにどうやっているかを隣にいる人と雑談したりします。

2014-03-25 8:29 GMT+09:00 Satoshi GUNJI \<gunjisatoshi@g...\>:

> 郡司です。
> 
> 会場提供いつもありがとうございます。 何事もなければ参加の予定です。
> 
> 3/30(日)発行予定のRubyist Magazine 0046号に関する諸作業をします。
> 
> 2014年3月25日 7:49 伊藤邦彦 \<kuni-ito@e...\>:
> 
> > 伊藤です。
> > 
> > 上野永和でドアマンできます。 今日は上野開催でいかがでしょうか。
> > 
> > 2014年3月25日 7:35 \<takkanm@g...\>:
> > 
> > > 今日は 253 回目のミートアップなんですが、わたし体調不良で不参加です。
> > > 
> > > どこか会場提供をお願いします。
> > - -
> > 
> > archive-\> [http://qwik.jp/asakusarb/hack253.html](http://qwik.jp/asakusarb/hack253.html)ML-\> asakusarb@q...
* * *

SHIBATA Hiroshi hsbt@r...  
[http://www.hsbt.org/](http://www.hsbt.org/)

## Mar 25, 2014 From: tad.a.digger@g...

斎藤と申します。

体内時計がJSTになってきたので、久しぶりに参加させていただこうと思います。

Heroku 上で日本語形態素解析をするための、手軽な方法があったら教えて下さい。  
[https://github.com/tadd/braille-ja/issues/4](https://github.com/tadd/braille-ja/issues/4)

2014年3月25日 8:29 Satoshi GUNJI \<gunjisatoshi@g...\>:

> 郡司です。
> 
> 会場提供いつもありがとうございます。 何事もなければ参加の予定です。
> 
> 3/30(日)発行予定のRubyist Magazine 0046号に関する諸作業をします。
> 
> 2014年3月25日 7:49 伊藤邦彦 \<kuni-ito@e...\>:
> 
> 伊藤です。
> 
> > 上野永和でドアマンできます。 今日は上野開催でいかがでしょうか。
> > 
> > 2014年3月25日 7:35 \<takkanm@g...\>:
> > 
> > > 今日は 253 回目のミートアップなんですが、わたし体調不良で不参加です。
> > > 
> > > どこか会場提供をお願いします。
> > - -
> > 
> > archive-\> [http://qwik.jp/asakusarb/hack253.html](http://qwik.jp/asakusarb/hack253.html)ML-\> asakusarb@q...
* * *

斎藤ただし

## Mar 25, 2014 From: gunjisatoshi@g...

郡司です。余談にツッコミ。

> Rails でリクエストのパラメータに応じてビューを変えたい

って、Sinatraで言うと下記のような感じですかねえ。

* * *

require 'sinatra'{{br}} require 'haml'{{br}}

get '/hoge/:fuga' do

    case
     when params[:fuga] == 'foo' then haml :foo #

/hoge/fooにアクセスするとviews/foo.hamlが使われる

    when params[:fuga] == 'bar' then haml :bar #

/hoge/barにアクセスするとviews/bar.hamlが使われる

    end

end

* * *

2014年3月25日 8:54 SHIBATA Hiroshi \<hsbt@r...\>:

> 柴田です。
> 
> 参加します。
> 
> るびまのランキング作成した後は Rails でリクエストのパラメータに応じて ビューを変えたい、というときにどうやっているかを隣にいる人と雑談したりします。
> 
> 2014-03-25 8:29 GMT+09:00 Satoshi GUNJI \<gunjisatoshi@g...\>:
> 
> > 郡司です。
> > 
> > 会場提供いつもありがとうございます。 何事もなければ参加の予定です。
> > 
> > 3/30(日)発行予定のRubyist Magazine 0046号に関する諸作業をします。
> > 
> > 2014年3月25日 7:49 伊藤邦彦 \<kuni-ito@e...\>:
> > 
> > > 伊藤です。
> > > 
> > > 上野永和でドアマンできます。 今日は上野開催でいかがでしょうか。
> > > 
> > > 2014年3月25日 7:35 \<takkanm@g...\>:
> > > 
> > > > 今日は 253 回目のミートアップなんですが、わたし体調不良で不参加です。
> > > > 
> > > > どこか会場提供をお願いします。
> > > - -
> > > 
> > > archive-\> [http://qwik.jp/asakusarb/hack253.html](http://qwik.jp/asakusarb/hack253.html)ML-\> asakusarb@q...
> - -
> 
> SHIBATA Hiroshi hsbt@r...[http://www.hsbt.org/](http://www.hsbt.org/)
> 
> - -
> 
> archive-\> [http://qwik.jp/asakusarb/hack253.html](http://qwik.jp/asakusarb/hack253.html)ML-\> asakusarb@q...
## Mar 25, 2014 From: gunjisatoshi@g...

郡司です。さらに余談にツッコミ。

> Heroku 上で日本語形態素解析をするための、手軽な方法があったら教えて下さい。

これ、私も知りたいです。  
Mecabとかが定番なんですかねえ。

2014年3月25日 8:56 Tadashi Saito \<tad.a.digger@g...\>:

> 斎藤と申します。
> 
> 体内時計がJSTになってきたので、久しぶりに参加させていただこうと思います。
> 
> Heroku 上で日本語形態素解析をするための、手軽な方法があったら教えて下さい。[https://github.com/tadd/braille-ja/issues/4](https://github.com/tadd/braille-ja/issues/4)
> 
> 2014年3月25日 8:29 Satoshi GUNJI \<gunjisatoshi@g...\>:
> 
> > 郡司です。
> > 
> > 会場提供いつもありがとうございます。 何事もなければ参加の予定です。
> > 
> > 3/30(日)発行予定のRubyist Magazine 0046号に関する諸作業をします。
> > 
> > 2014年3月25日 7:49 伊藤邦彦 \<kuni-ito@e...\>:
> > 
> > 伊藤です。
> > 
> > > 上野永和でドアマンできます。 今日は上野開催でいかがでしょうか。
> > > 
> > > 2014年3月25日 7:35 \<takkanm@g...\>:
> > > 
> > > > 今日は 253 回目のミートアップなんですが、わたし体調不良で不参加です。
> > > > 
> > > > どこか会場提供をお願いします。
> > > - -
> > > 
> > > archive-\> [http://qwik.jp/asakusarb/hack253.html](http://qwik.jp/asakusarb/hack253.html)ML-\> asakusarb@q...
> - -
> 
> 斎藤ただし
## Mar 25, 2014 From: gunjisatoshi@g...

郡司です。

使ったことはないのですが、Mecabの辞書が使えるPure Rubyな形態素解析gemとして  
okuraというのがあるそうですね。

[https://github.com/todesking/okura](https://github.com/todesking/okura)

2014年3月25日 9:20 Satoshi GUNJI \<gunjisatoshi@g...\>:

> 郡司です。さらに余談にツッコミ。
> 
> > Heroku 上で日本語形態素解析をするための、手軽な方法があったら教えて下さい。
> 
> これ、私も知りたいです。 Mecabとかが定番なんですかねえ。
> 
> 2014年3月25日 8:56 Tadashi Saito \<tad.a.digger@g...\>:
> 
> 斎藤と申します。
> 
> > 体内時計がJSTになってきたので、久しぶりに参加させていただこうと思います。
> > 
> > Heroku 上で日本語形態素解析をするための、手軽な方法があったら教えて下さい。[https://github.com/tadd/braille-ja/issues/4](https://github.com/tadd/braille-ja/issues/4)
> > 
> > 2014年3月25日 8:29 Satoshi GUNJI \<gunjisatoshi@g...\>:
> > 
> > > 郡司です。
> > > 
> > > 会場提供いつもありがとうございます。 何事もなければ参加の予定です。
> > > 
> > > 3/30(日)発行予定のRubyist Magazine 0046号に関する諸作業をします。
> > > 
> > > 2014年3月25日 7:49 伊藤邦彦 \<kuni-ito@e...\>:
> > > 
> > > 伊藤です。
> > > 
> > > > 上野永和でドアマンできます。 今日は上野開催でいかがでしょうか。
> > > > 
> > > > 2014年3月25日 7:35 \<takkanm@g...\>:
> > > > 
> > > > > 今日は 253 回目のミートアップなんですが、わたし体調不良で不参加です。
> > > > > 
> > > > > どこか会場提供をお願いします。
> > > > - -
> > > > 
> > > > archive-\> [http://qwik.jp/asakusarb/hack253.html](http://qwik.jp/asakusarb/hack253.html)ML-\> asakusarb@q...
> > - -
> > 
> > 斎藤ただし
## Mar 25, 2014 From: youchan01@g...

ようです。

参加します。

2014年3月25日 9:29 Satoshi GUNJI \<gunjisatoshi@g...\>:

> 郡司です。
> 
> 使ったことはないのですが、Mecabの辞書が使えるPure Rubyな形態素解析gemとして okuraというのがあるそうですね。
> 
> [https://github.com/todesking/okura](https://github.com/todesking/okura)
> 
> 2014年3月25日 9:20 Satoshi GUNJI \<gunjisatoshi@g...\>:
> 
> > 郡司です。さらに余談にツッコミ。
> > 
> > > Heroku 上で日本語形態素解析をするための、手軽な方法があったら教えて下さい。
> > 
> > これ、私も知りたいです。 Mecabとかが定番なんですかねえ。
> > 
> > 2014年3月25日 8:56 Tadashi Saito \<tad.a.digger@g...\>:
> > 
> > > 斎藤と申します。
> > > 
> > > 体内時計がJSTになってきたので、久しぶりに参加させていただこうと思います。
> > > 
> > > Heroku 上で日本語形態素解析をするための、手軽な方法があったら教えて下さい。[https://github.com/tadd/braille-ja/issues/4](https://github.com/tadd/braille-ja/issues/4)
> > > 
> > > 2014年3月25日 8:29 Satoshi GUNJI \<gunjisatoshi@g...\>:
> > > 
> > > > 郡司です。
> > > > 
> > > > 会場提供いつもありがとうございます。 何事もなければ参加の予定です。
> > > > 
> > > > 3/30(日)発行予定のRubyist Magazine 0046号に関する諸作業をします。
> > > > 
> > > > 2014年3月25日 7:49 伊藤邦彦 \<kuni-ito@e...\>:
> > > > 
> > > > > 伊藤です。
> > > > > 
> > > > > 上野永和でドアマンできます。 今日は上野開催でいかがでしょうか。
> > > > > 
> > > > > 2014年3月25日 7:35 \<takkanm@g...\>:
> > > > > 
> > > > > > 今日は 253 回目のミートアップなんですが、わたし体調不良で不参加です。
> > > > > > 
> > > > > > どこか会場提供をお願いします。
> > > > > - -
> > > > > 
> > > > > archive-\> [http://qwik.jp/asakusarb/hack253.html](http://qwik.jp/asakusarb/hack253.html)ML-\> asakusarb@q...
> > > - -
> > > 
> > > 斎藤ただし
* * *

大崎　瑶 \<youchan01@g...\>

## Mar 25, 2014 From: uzukifirst@g...

所です。

来週から半年くらいインドへ旅に出てしまうので挨拶したいなぁと思い参加したいです。  
インドから帰ってきた松田さんの話を聞きたい！（けれど、今日来るかなぁ？

###### \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

    Chikahiro Tokoro

E-mail :uzukifirst@g...

###### \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

2014-03-25 11:57 GMT+09:00 よう \<youchan01@g...\>:

> ようです。
> 
> 参加します。
> 
> 2014年3月25日 9:29 Satoshi GUNJI \<gunjisatoshi@g...\>:
> 
> > 郡司です。
> > 
> > 使ったことはないのですが、Mecabの辞書が使えるPure Rubyな形態素解析gemとして okuraというのがあるそうですね。
> > 
> > [https://github.com/todesking/okura](https://github.com/todesking/okura)
> > 
> > 2014年3月25日 9:20 Satoshi GUNJI \<gunjisatoshi@g...\>:
> > 
> > > 郡司です。さらに余談にツッコミ。
> > > 
> > > > Heroku 上で日本語形態素解析をするための、手軽な方法があったら教えて下さい。
> > > 
> > > これ、私も知りたいです。 Mecabとかが定番なんですかねえ。
> > > 
> > > 2014年3月25日 8:56 Tadashi Saito \<tad.a.digger@g...\>:
> > > 
> > > > 斎藤と申します。
> > > > 
> > > > 体内時計がJSTになってきたので、久しぶりに参加させていただこうと思います。
> > > > 
> > > > Heroku 上で日本語形態素解析をするための、手軽な方法があったら教えて下さい。[https://github.com/tadd/braille-ja/issues/4](https://github.com/tadd/braille-ja/issues/4)
> > > > 
> > > > 2014年3月25日 8:29 Satoshi GUNJI \<gunjisatoshi@g...\>:
> > > > 
> > > > > 郡司です。
> > > > > 
> > > > > 会場提供いつもありがとうございます。 何事もなければ参加の予定です。
> > > > > 
> > > > > 3/30(日)発行予定のRubyist Magazine 0046号に関する諸作業をします。
> > > > > 
> > > > > 2014年3月25日 7:49 伊藤邦彦 \<kuni-ito@e...\>:
> > > > > 
> > > > > > 伊藤です。
> > > > > > 
> > > > > > 上野永和でドアマンできます。 今日は上野開催でいかがでしょうか。
> > > > > > 
> > > > > > 2014年3月25日 7:35 \<takkanm@g...\>:
> > > > > > 
> > > > > > > 今日は 253 回目のミートアップなんですが、わたし体調不良で不参加です。
> > > > > > > 
> > > > > > > どこか会場提供をお願いします。
> > > > > > - -
> > > > > > 
> > > > > > archive-\> [http://qwik.jp/asakusarb/hack253.html](http://qwik.jp/asakusarb/hack253.html)ML-\> asakusarb@q...
> > > > - -
> > > > 
> > > > 斎藤ただし
> - -
> 
> 大崎 瑶 \<youchan01@g...\>
> 
> - -
> 
> archive-\> [http://qwik.jp/asakusarb/hack253.html](http://qwik.jp/asakusarb/hack253.html)ML-\> asakusarb@q...
## Mar 25, 2014 From: kakyoin.hierophant@g...

橋立です。参加します。  
LTの資料作成をする予定です。

そういえば、花見の場所取りってどうなってるんでしょうか。  
午前中だけは参加できそうなので、協力できます。

2014年3月25日 12:06 uzukifirst@g... \<uzukifirst@g...\>:

> 所です。
> 
> 来週から半年くらいインドへ旅に出てしまうので挨拶したいなぁと思い参加したいです。 インドから帰ってきた松田さんの話を聞きたい！（けれど、今日来るかなぁ？
> 
> ###### \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*
> 
> Chikahiro Tokoro E-mail :uzukifirst@g...
> 
> ###### \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*
> 
> 2014-03-25 11:57 GMT+09:00 よう \<youchan01@g...\>:
> 
> ようです。
> 
> > 参加します。
> > 
> > 2014年3月25日 9:29 Satoshi GUNJI \<gunjisatoshi@g...\>:
> > 
> > > 郡司です。
> > > 
> > > 使ったことはないのですが、Mecabの辞書が使えるPure Rubyな形態素解析gemとして okuraというのがあるそうですね。
> > > 
> > > [https://github.com/todesking/okura](https://github.com/todesking/okura)
> > > 
> > > 2014年3月25日 9:20 Satoshi GUNJI \<gunjisatoshi@g...\>:
> > > 
> > > > 郡司です。さらに余談にツッコミ。
> > > > 
> > > > > Heroku 上で日本語形態素解析をするための、手軽な方法があったら教えて下さい。
> > > > 
> > > > これ、私も知りたいです。 Mecabとかが定番なんですかねえ。
> > > > 
> > > > 2014年3月25日 8:56 Tadashi Saito \<tad.a.digger@g...\>:
> > > > 
> > > > > 斎藤と申します。
> > > > > 
> > > > > 体内時計がJSTになってきたので、久しぶりに参加させていただこうと思います。
> > > > > 
> > > > > Heroku 上で日本語形態素解析をするための、手軽な方法があったら教えて下さい。[https://github.com/tadd/braille-ja/issues/4](https://github.com/tadd/braille-ja/issues/4)
> > > > > 
> > > > > 2014年3月25日 8:29 Satoshi GUNJI \<gunjisatoshi@g...\>:
> > > > > 
> > > > > > 郡司です。
> > > > > > 
> > > > > > 会場提供いつもありがとうございます。 何事もなければ参加の予定です。
> > > > > > 
> > > > > > 3/30(日)発行予定のRubyist Magazine 0046号に関する諸作業をします。
> > > > > > 
> > > > > > 2014年3月25日 7:49 伊藤邦彦 \<kuni-ito@e...\>:
> > > > > > 
> > > > > > > 伊藤です。
> > > > > > > 
> > > > > > > 上野永和でドアマンできます。 今日は上野開催でいかがでしょうか。
> > > > > > > 
> > > > > > > 2014年3月25日 7:35 \<takkanm@g...\>:
> > > > > > > 
> > > > > > > > 今日は 253 回目のミートアップなんですが、わたし体調不良で不参加です。
> > > > > > > > 
> > > > > > > > どこか会場提供をお願いします。
> > > > > > > - -
> > > > > > > 
> > > > > > > archive-\> [http://qwik.jp/asakusarb/hack253.html](http://qwik.jp/asakusarb/hack253.html)ML-\> asakusarb@q...
> > > > > - -
> > > > > 
> > > > > 斎藤ただし
> > - -
> > 
> > 大崎 瑶 \<youchan01@g...\>
> > 
> > - -
> > 
> > archive-\> [http://qwik.jp/asakusarb/hack253.html](http://qwik.jp/asakusarb/hack253.html)ML-\> asakusarb@q...
## Mar 25, 2014 From: ronnie@d...

2014-03-25 12:06 GMT+09:00 uzukifirst@g... \<uzukifirst@g...\>:

> インドから帰ってきた松田さんの話を聞きたい！（けれど、今日来るかなぁ？

いまスカイライナーの中なんですが、すげー疲れてなければ顔は出せそう気がしてます。近所だし。  
話したいことは色いろあるんですが、とりあえずひとつだけ言っておくと、インドはカレーがとってもおいしい国でした！

## Mar 25, 2014 From: gunjisatoshi@g...

郡司です。

（もはやここで続けるべきではないような気がするのですが）  
okura使ってみました。手元では動いてるっぽいです。  
（が、Herokuで動くかはまだ試してません）

- -

$ gem install specific\_install  
$ gem specific\_install -l 'git://github.com/todesking/okura.git'{{br}} $ wget '{{br}}[http://sourceforge.jp/frs/redir.php?m=jaist&f=%2Fnaist-jdic%2F53500%2Fmecab-naist-jdic-0.6.3b-20111013.tar.gz](http://sourceforge.jp/frs/redir.php?m=jaist&f=%2Fnaist-jdic%2F53500%2Fmecab-naist-jdic-0.6.3b-20111013.tar.gz)  
'{{br}} $ tar xvzf mecab-naist-jdic-0.6.3b-20111013.tar.gz  
$ okura compile mecab-naist-jdic-0.6.3b-20111013/ okura-dic  
$ vim sample.rb

* * *

require 'okura/serializer'{{br}}

tagger = Okura::Serializer::FormatInfo.create\_tagger('okura-dic')

p tagger.wakati('分かち書きのサンプルです。')

* * *

$ ruby sample.rb  
1589586  
["BOS/EOS", "分かち書き", "の", "サンプル", "です", "。", "BOS/EOS"]{{br $

- -

2014年3月25日 9:29 Satoshi GUNJI \<gunjisatoshi@g...\>:

> 郡司です。
> 
> 使ったことはないのですが、Mecabの辞書が使えるPure Rubyな形態素解析gemとして okuraというのがあるそうですね。
> 
> [https://github.com/todesking/okura](https://github.com/todesking/okura)
> 
> 2014年3月25日 9:20 Satoshi GUNJI \<gunjisatoshi@g...\>:
> 
> 郡司です。さらに余談にツッコミ。
> 
> > > Heroku 上で日本語形態素解析をするための、手軽な方法があったら教えて下さい。
> > 
> > これ、私も知りたいです。 Mecabとかが定番なんですかねえ。
> > 
> > 2014年3月25日 8:56 Tadashi Saito \<tad.a.digger@g...\>:
> > 
> > 斎藤と申します。
> > 
> > > 体内時計がJSTになってきたので、久しぶりに参加させていただこうと思います。
> > > 
> > > Heroku 上で日本語形態素解析をするための、手軽な方法があったら教えて下さい。[https://github.com/tadd/braille-ja/issues/4](https://github.com/tadd/braille-ja/issues/4)
> > > 
> > > 2014年3月25日 8:29 Satoshi GUNJI \<gunjisatoshi@g...\>:
> > > 
> > > > 郡司です。
> > > > 
> > > > 会場提供いつもありがとうございます。 何事もなければ参加の予定です。
> > > > 
> > > > 3/30(日)発行予定のRubyist Magazine 0046号に関する諸作業をします。
> > > > 
> > > > 2014年3月25日 7:49 伊藤邦彦 \<kuni-ito@e...\>:
> > > > 
> > > > 伊藤です。
> > > > 
> > > > > 上野永和でドアマンできます。 今日は上野開催でいかがでしょうか。
> > > > > 
> > > > > 2014年3月25日 7:35 \<takkanm@g...\>:
> > > > > 
> > > > > > 今日は 253 回目のミートアップなんですが、わたし体調不良で不参加です。
> > > > > > 
> > > > > > どこか会場提供をお願いします。
> > > > > - -
> > > > > 
> > > > > archive-\> [http://qwik.jp/asakusarb/hack253.html](http://qwik.jp/asakusarb/hack253.html)ML-\> asakusarb@q...
> > > - -
> > > 
> > > 斎藤ただし
## Mar 25, 2014 From: shimura-hir@o...

ひさしぶりに参加します。宜しくお願いします

    志村 弘之

In message "[asakusarb:5135] Re: 第253回Asakusa.rb (2014-03-25)",   
\<CABzsCMnunCa+75oCL3GAHmZ4Rq+VFLq0D72CGV4kh74HmhpNQg@m...\>,

    >橋立です。参加します。
    >LTの資料作成をする予定です。
    >
    >そういえば、花見の場所取りってどうなってるんでしょうか。
    >午前中だけは参加できそうなので、協力できます。

    >> 来週から半年くらいインドへ旅に出てしまうので挨拶したいなぁと思い参加したい

です。

    >> インドから帰ってきた松田さんの話を聞きたい！（けれど、今日来るかなぁ？

    >> ようです。
    >>>
    >>> 参加します。

    >>> > 郡司です。
    >>> >
    >>> > 使ったことはないのですが、Mecabの辞書が使えるPure Rubyな形態素解析gemと

して

    >>> > okuraというのがあるそうですね。
    >>> >
    >>> > https://github.com/todesking/okura
    >>> >
    >>> >
    >>> >
    >>> > 2014年3月25日 9:20 Satoshi GUNJI <gunjisatoshi@g...>:
    >>> >
    >>> >> 郡司です。さらに余談にツッコミ。
    >>> >>
    >>> >> > Heroku 上で日本語形態素解析をするための、手軽な方法があったら教えて下

さい。

    >>> >>
    >>> >> これ、私も知りたいです。
    >>> >> Mecabとかが定番なんですかねえ。
    >>> >>
    >>> >>
    >>> >>
    >>> >> 2014年3月25日 8:56 Tadashi Saito <tad.a.digger@g...>:
    >>> >>
    >>> >>> 斎藤と申します。
    >>> >>>
    >>> >>> 体内時計がJSTになってきたので、久しぶりに参加させていただこうと思いま

す。

    >>> >>>
    >>> >>> Heroku 上で日本語形態素解析をするための、手軽な方法があったら教えて下

さい。

    >>> >>> https://github.com/tadd/braille-ja/issues/4
    >>> >>>
    >>> >>>
    >>> >>> 2014年3月25日 8:29 Satoshi GUNJI <gunjisatoshi@g...>:
    >>> >>>>
    >>> >>>> 郡司です。
    >>> >>>>
    >>> >>>> 会場提供いつもありがとうございます。
    >>> >>>> 何事もなければ参加の予定です。
    >>> >>>>
    >>> >>>> 3/30(日)発行予定のRubyist Magazine 0046号に関する諸作業をします。
    >>> >>>>
    >>> >>>>
    >>> >>>>
    >>> >>>> 2014年3月25日 7:49 伊藤邦彦 <kuni-ito@e...>:
    >>> >>>>
    >>> >>>>> 伊藤です。
    >>> >>>>>
    >>> >>>>> 上野永和でドアマンできます。
    >>> >>>>> 今日は上野開催でいかがでしょうか。
    >>> >>>>>
    >>> >>>>> 2014年3月25日 7:35 <takkanm@g...>:
    >>> >>>>> > 今日は 253 回目のミートアップなんですが、わたし体調不良で不参加で

す。

    >>> >>>>> >
    >>> >>>>> > どこか会場提供をお願いします。

    - ------------------------------------+---------+---------+以上 2014/3/25

志村弘之 mailto: shimura-hir@o...

## Mar 25, 2014 From: mayumi.emori@g...

emorimaです。

いつも会場提供ありがとうございます。  
本日は進捗がダメなので、欠席します。

今週末のお花見は、温かくて天気も良さそうですね！  
沖縄で買ったチラガーがあるので、適当に調理して持っていきますー。

## Mar 25, 2014 From: gunjisatoshi@g...

郡司です。もうここで続けるべきではないので、これで最後です。

Herokuに簡単なSinatraアプリを上げてみてokuraが動くことを確認しました。

[http://radiant-escarpment-1593.herokuapp.com/](http://radiant-escarpment-1593.herokuapp.com/)

適当な日本語の文章をテキストボックスに入れて「解析」を押してみてください。

2014年3月25日 15:08 Satoshi GUNJI \<gunjisatoshi@g...\>:

> 郡司です。
> 
> （もはやここで続けるべきではないような気がするのですが） okura使ってみました。手元では動いてるっぽいです。 （が、Herokuで動くかはまだ試してません）
> 
> - -
> 
> $ gem install specific\_install $ gem specific\_install -l 'git://github.com/todesking/okura.git' $ wget '[http://sourceforge.jp/frs/redir.php?m=jaist&f=%2Fnaist-jdic%2F53500%2Fmecab-naist-jdic-0.6.3b-20111013.tar.gz](http://sourceforge.jp/frs/redir.php?m=jaist&f=%2Fnaist-jdic%2F53500%2Fmecab-naist-jdic-0.6.3b-20111013.tar.gz)' $ tar xvzf mecab-naist-jdic-0.6.3b-20111013.tar.gz $ okura compile mecab-naist-jdic-0.6.3b-20111013/ okura-dic $ vim sample.rb
> 
> * * *
> 
> require 'okura/serializer'
> 
> tagger = Okura::Serializer::FormatInfo.create\_tagger('okura-dic')
> 
> p tagger.wakati('分かち書きのサンプルです。')
> 
> * * *
> 
> $ ruby sample.rb 1589586 ["BOS/EOS", "分かち書き", "の", "サンプル", "です", "。", "BOS/EOS" $
> 
> - -
> 
> 2014年3月25日 9:29 Satoshi GUNJI \<gunjisatoshi@g...\>:
> 
> > 郡司です。
> > 
> > 使ったことはないのですが、Mecabの辞書が使えるPure Rubyな形態素解析gemとして okuraというのがあるそうですね。
> > 
> > [https://github.com/todesking/okura](https://github.com/todesking/okura)
> > 
> > 2014年3月25日 9:20 Satoshi GUNJI \<gunjisatoshi@g...\>:
> > 
> > 郡司です。さらに余談にツッコミ。
> > 
> > > > Heroku 上で日本語形態素解析をするための、手軽な方法があったら教えて下さい。
> > > 
> > > これ、私も知りたいです。 Mecabとかが定番なんですかねえ。
> > > 
> > > 2014年3月25日 8:56 Tadashi Saito \<tad.a.digger@g...\>:
> > > 
> > > 斎藤と申します。
> > > 
> > > > 体内時計がJSTになってきたので、久しぶりに参加させていただこうと思います。
> > > > 
> > > > Heroku 上で日本語形態素解析をするための、手軽な方法があったら教えて下さい。[https://github.com/tadd/braille-ja/issues/4](https://github.com/tadd/braille-ja/issues/4)
> > > > 
> > > > 2014年3月25日 8:29 Satoshi GUNJI \<gunjisatoshi@g...\>:
> > > > 
> > > > > 郡司です。
> > > > > 
> > > > > 会場提供いつもありがとうございます。 何事もなければ参加の予定です。
> > > > > 
> > > > > 3/30(日)発行予定のRubyist Magazine 0046号に関する諸作業をします。
> > > > > 
> > > > > 2014年3月25日 7:49 伊藤邦彦 \<kuni-ito@e...\>:
> > > > > 
> > > > > 伊藤です。
> > > > > 
> > > > > > 上野永和でドアマンできます。 今日は上野開催でいかがでしょうか。
> > > > > > 
> > > > > > 2014年3月25日 7:35 \<takkanm@g...\>:
> > > > > > 
> > > > > > > 今日は 253 回目のミートアップなんですが、わたし体調不良で不参加です。
> > > > > > > 
> > > > > > > どこか会場提供をお願いします。
> > > > > > - -
> > > > > > 
> > > > > > archive-\> [http://qwik.jp/asakusarb/hack253.html](http://qwik.jp/asakusarb/hack253.html)ML-\> asakusarb@q...
> > > > - -
> > > > 
> > > > 斎藤ただし
## Mar 25, 2014 From: tad.a.digger@g...

斎藤です。

郡司さん、ありがとうございます。okuraはチェックしていたのですが、必要な助詞の抜き出しが  
できるかどうか、見ていませんでした。それができるのがわかって、とてもありがたいです。

また必要があったら、スレッドを分けて投稿します。

仕事が遅れてしまってもう少ししてから参加ですが、間に合うかな…

2014年3月25日 19:07 Satoshi GUNJI \<gunjisatoshi@g...\>:

> 郡司です。もうここで続けるべきではないので、これで最後です。
> 
> Herokuに簡単なSinatraアプリを上げてみてokuraが動くことを確認しました。
> 
> [http://radiant-escarpment-1593.herokuapp.com/](http://radiant-escarpment-1593.herokuapp.com/)
> 
> 適当な日本語の文章をテキストボックスに入れて「解析」を押してみてください。
> 
> 2014年3月25日 15:08 Satoshi GUNJI \<gunjisatoshi@g...\>:
> 
> 郡司です。
> 
> > （もはやここで続けるべきではないような気がするのですが） okura使ってみました。手元では動いてるっぽいです。 （が、Herokuで動くかはまだ試してません）
> > 
> > - -
> > 
> > $ gem install specific\_install $ gem specific\_install -l 'git://github.com/todesking/okura.git' $ wget '[http://sourceforge.jp/frs/redir.php?m=jaist&f=%2Fnaist-jdic%2F53500%2Fmecab-naist-jdic-0.6.3b-20111013.tar.gz](http://sourceforge.jp/frs/redir.php?m=jaist&f=%2Fnaist-jdic%2F53500%2Fmecab-naist-jdic-0.6.3b-20111013.tar.gz)' $ tar xvzf mecab-naist-jdic-0.6.3b-20111013.tar.gz $ okura compile mecab-naist-jdic-0.6.3b-20111013/ okura-dic $ vim sample.rb
> > 
> > * * *
> > 
> > require 'okura/serializer'
> > 
> > tagger = Okura::Serializer::FormatInfo.create\_tagger('okura-dic')
> > 
> > p tagger.wakati('分かち書きのサンプルです。')
> > 
> > * * *
> > 
> > $ ruby sample.rb 1589586 ["BOS/EOS", "分かち書き", "の", "サンプル", "です", "。", "BOS/EOS" $
> > 
> > - -
> > 
> > 2014年3月25日 9:29 Satoshi GUNJI \<gunjisatoshi@g...\>:
> > 
> > > 郡司です。
> > > 
> > > 使ったことはないのですが、Mecabの辞書が使えるPure Rubyな形態素解析gemとして okuraというのがあるそうですね。
> > > 
> > > [https://github.com/todesking/okura](https://github.com/todesking/okura)
> > > 
> > > 2014年3月25日 9:20 Satoshi GUNJI \<gunjisatoshi@g...\>:
> > > 
> > > 郡司です。さらに余談にツッコミ。
> > > 
> > > > > Heroku 上で日本語形態素解析をするための、手軽な方法があったら教えて下さい。
> > > > 
> > > > これ、私も知りたいです。 Mecabとかが定番なんですかねえ。
> > > > 
> > > > 2014年3月25日 8:56 Tadashi Saito \<tad.a.digger@g...\>:
> > > > 
> > > > 斎藤と申します。
> > > > 
> > > > > 体内時計がJSTになってきたので、久しぶりに参加させていただこうと思います。
> > > > > 
> > > > > Heroku 上で日本語形態素解析をするための、手軽な方法があったら教えて下さい。[https://github.com/tadd/braille-ja/issues/4](https://github.com/tadd/braille-ja/issues/4)
> > > > > 
> > > > > 2014年3月25日 8:29 Satoshi GUNJI \<gunjisatoshi@g...\>:
> > > > > 
> > > > > > 郡司です。
> > > > > > 
> > > > > > 会場提供いつもありがとうございます。 何事もなければ参加の予定です。
> > > > > > 
> > > > > > 3/30(日)発行予定のRubyist Magazine 0046号に関する諸作業をします。
> > > > > > 
> > > > > > 2014年3月25日 7:49 伊藤邦彦 \<kuni-ito@e...\>:
> > > > > > 
> > > > > > 伊藤です。
> > > > > > 
> > > > > > > 上野永和でドアマンできます。 今日は上野開催でいかがでしょうか。
> > > > > > > 
> > > > > > > 2014年3月25日 7:35 \<takkanm@g...\>:
> > > > > > > 
> > > > > > > > 今日は 253 回目のミートアップなんですが、わたし体調不良で不参加です。
> > > > > > > > 
> > > > > > > > どこか会場提供をお願いします。
> > > > > > > - -
> > > > > > > 
> > > > > > > archive-\> [http://qwik.jp/asakusarb/hack253.html](http://qwik.jp/asakusarb/hack253.html)ML-\> asakusarb@q...
> > > > > - -
> > > > > 
> > > > > 斎藤ただし
* * *

tad

## Mar 25, 2014 From: shintaro.kakutani@g...

かくたにです。行こうと思ってたのですが、ヘバってしまったので欠席します……むむむ。oedo04の連絡相談事項がいくつかあったのですが、回復したら  
asakusarb/oedo04 に書きます…

2014-03-25 20:12 GMT+09:00 Tadashi Saito \<tad.a.digger@g...\>:

> 斎藤です。
> 
> 郡司さん、ありがとうございます。okuraはチェックしていたのですが、必要な助詞の抜き出しが できるかどうか、見ていませんでした。それができるのがわかって、とてもありがたいです。
> 
> また必要があったら、スレッドを分けて投稿します。
> 
> 仕事が遅れてしまってもう少ししてから参加ですが、間に合うかな…
> 
> 2014年3月25日 19:07 Satoshi GUNJI \<gunjisatoshi@g...\>:
> 
> > 郡司です。もうここで続けるべきではないので、これで最後です。
> > 
> > Herokuに簡単なSinatraアプリを上げてみてokuraが動くことを確認しました。
> > 
> > [http://radiant-escarpment-1593.herokuapp.com/](http://radiant-escarpment-1593.herokuapp.com/)
> > 
> > 適当な日本語の文章をテキストボックスに入れて「解析」を押してみてください。
> > 
> > 2014年3月25日 15:08 Satoshi GUNJI \<gunjisatoshi@g...\>:
> > 
> > > 郡司です。
> > > 
> > > （もはやここで続けるべきではないような気がするのですが） okura使ってみました。手元では動いてるっぽいです。 （が、Herokuで動くかはまだ試してません）
> > > 
> > > - -
> > > 
> > > $ gem install specific\_install $ gem specific\_install -l 'git://github.com/todesking/okura.git' $ wget '[http://sourceforge.jp/frs/redir.php?m=jaist&f=%2Fnaist-jdic%2F53500%2Fmecab-naist-jdic-0.6.3b-20111013.tar.gz'](http://sourceforge.jp/frs/redir.php?m=jaist&f=%2Fnaist-jdic%2F53500%2Fmecab-naist-jdic-0.6.3b-20111013.tar.gz')$ tar xvzf mecab-naist-jdic-0.6.3b-20111013.tar.gz $ okura compile mecab-naist-jdic-0.6.3b-20111013/ okura-dic $ vim sample.rb
> > > 
> > > * * *
> > > 
> > > require 'okura/serializer'
> > > 
> > > tagger = Okura::Serializer::FormatInfo.create\_tagger('okura-dic')
> > > 
> > > p tagger.wakati('分かち書きのサンプルです。')
> > > 
> > > * * *
> > > 
> > > $ ruby sample.rb 1589586 ["BOS/EOS", "分かち書き", "の", "サンプル", "です", "。", "BOS/EOS" $
> > > 
> > > - -
> > > 
> > > 2014年3月25日 9:29 Satoshi GUNJI \<gunjisatoshi@g...\>:
> > > 
> > > > 郡司です。
> > > > 
> > > > 使ったことはないのですが、Mecabの辞書が使えるPure Rubyな形態素解析gemとして okuraというのがあるそうですね。
> > > > 
> > > > [https://github.com/todesking/okura](https://github.com/todesking/okura)
> > > > 
> > > > 2014年3月25日 9:20 Satoshi GUNJI \<gunjisatoshi@g...\>:
> > > > 
> > > > > 郡司です。さらに余談にツッコミ。
> > > > > 
> > > > > > Heroku 上で日本語形態素解析をするための、手軽な方法があったら教えて下さい。
> > > > > 
> > > > > これ、私も知りたいです。 Mecabとかが定番なんですかねえ。
> > > > > 
> > > > > 2014年3月25日 8:56 Tadashi Saito \<tad.a.digger@g...\>:
> > > > > 
> > > > > > 斎藤と申します。
> > > > > > 
> > > > > > 体内時計がJSTになってきたので、久しぶりに参加させていただこうと思います。
> > > > > > 
> > > > > > Heroku 上で日本語形態素解析をするための、手軽な方法があったら教えて下さい。[https://github.com/tadd/braille-ja/issues/4](https://github.com/tadd/braille-ja/issues/4)
> > > > > > 
> > > > > > 2014年3月25日 8:29 Satoshi GUNJI \<gunjisatoshi@g...\>:
> > > > > > 
> > > > > > > 郡司です。
> > > > > > > 
> > > > > > > 会場提供いつもありがとうございます。 何事もなければ参加の予定です。
> > > > > > > 
> > > > > > > 3/30(日)発行予定のRubyist Magazine 0046号に関する諸作業をします。
> > > > > > > 
> > > > > > > 2014年3月25日 7:49 伊藤邦彦 \<kuni-ito@e...\>:
> > > > > > > 
> > > > > > > > 伊藤です。
> > > > > > > > 
> > > > > > > > 上野永和でドアマンできます。 今日は上野開催でいかがでしょうか。
> > > > > > > > 
> > > > > > > > 2014年3月25日 7:35 \<takkanm@g...\>:
> > > > > > > > 
> > > > > > > > > 今日は 253 回目のミートアップなんですが、わたし体調不良で不参加です。
> > > > > > > > > 
> > > > > > > > > どこか会場提供をお願いします。
> > > > > > > > - -
> > > > > > > > 
> > > > > > > > archive-\> [http://qwik.jp/asakusarb/hack253.html](http://qwik.jp/asakusarb/hack253.html)ML-\> asakusarb@q...
> > > > > > - -
> > > > > > 
> > > > > > 斎藤ただし
> - -
> 
> tad
* * *

Kakutani Shintaro

