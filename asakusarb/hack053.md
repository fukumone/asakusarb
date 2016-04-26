## 第53回Asakusa.rb(2010-06-22)

## Jun 19, 2010 From: shibata.hiroshi@g...

来週はいつもの場所でしょうか。  
今週は待機できると思います。

私は asakusa.rb 開催告知 on Heroku について構想をまとめてようと思います。

アイティメディアさんの件もあって、金曜までに連絡しなきゃなーと  
思っていたのですが土曜日になってしまいました。ごめんなさい。

## Jun 19, 2010 From: shintaro.kakutani@g...

待機できそうであれば永和でやりますかね。  
私はまたもや客先からの移動なのでちと遅れます。

開催告知は数少ないオレのHeroku練習ネタだったんですが手がまわってないので助かるなぁ。期待

On Saturday, June 19, 2010, SHIBATA Hiroshi \<shibata.hiroshi@g...\> wrote:

> 来週はいつもの場所でしょうか。 今週は待機できると思います。
> 
> 私は asakusa.rb 開催告知 on Heroku について構想をまとめてようと思います。
> 
> アイティメディアさんの件もあって、金曜までに連絡しなきゃなーと 思っていたのですが土曜日になってしまいました。ごめんなさい。
> 
> - -
> 
> archive-\> [http://qwik.jp/asakusarb/hack053.html](http://qwik.jp/asakusarb/hack053.html)ML-\> asakusarb@q...
* * *

Kakutani Shintaro

## Jun 22, 2010 From: igaiga@g...

いがいがです。

今日は参加したいです。  
RubyKaigi Sub-event の活動をするか、  
タイマーのtwitter接続OAuth対応をします。

いじょ。

On 2010/06/19, at 9:45, KAKUTANI Shintaro wrote:

> 待機できそうであれば永和でやりますかね。 私はまたもや客先からの移動なのでちと遅れます。
> 
> 開催告知は数少ないオレのHeroku練習ネタだったんですが手がまわってないので助かるなぁ。期待
> 
> On Saturday, June 19, 2010, SHIBATA Hiroshi \<shibata.hiroshi@g...\> wrote:
> 
> > 来週はいつもの場所でしょうか。 今週は待機できると思います。
> > 
> > 私は asakusa.rb 開催告知 on Heroku について構想をまとめてようと思います。
> > 
> > アイティメディアさんの件もあって、金曜までに連絡しなきゃなーと 思っていたのですが土曜日になってしまいました。ごめんなさい。
> > 
> > - -
> > 
> > archive-\> [http://qwik.jp/asakusarb/hack053.html](http://qwik.jp/asakusarb/hack053.html)ML-\> asakusarb@q...
> - -
> 
> Kakutani Shintaro
> 
> - -
> 
> archive-\> [http://qwik.jp/asakusarb/hack053.html](http://qwik.jp/asakusarb/hack053.html)ML-\> asakusarb@q...
## Jun 22, 2010 From: nakahiro@g...

行きます。今回はHeroku（オーローク）特集ですか？！

## Jun 22, 2010 From: ken97531@g...

西村です。

きょう参加します。Her-OH-kooという発音らしいですよね、、、

Herokuがプチ話題（？）なので、私も昨日1つ、部内で使いたいアプリの  
プロトタイプをgit push herokuしてみました。それを突っつきながら  
Railsの勉強したいなぁと思っています。

2010/6/22 NAKAMURA, Hiroshi \<nakahiro@g...\>:

> 行きます。今回はHeroku（オーローク）特集ですか？！
> 
> - -
> 
> archive-\> [http://qwik.jp/asakusarb/hack053.html](http://qwik.jp/asakusarb/hack053.html)ML-\> asakusarb@q...
## Jun 22, 2010 From: shintaro.kakutani@g...

空前のはーおーくーブーム!

いろいろあって行けるかもです。  
ただちょっと体調不良気味……。

* * *

Kakutani Shintaro

## Jun 22, 2010 From: nakahiro@g...

Herokuと言えば、無料だとThreadひとつ、とからしいじゃないですか。あれってtimeoutはどうなってるんでしょう。自前で再実装してあるのかな。1.8標準のは遅いから（httpclientやWEBrick、1.9、Rubinius、JRubyのは速い）。

標準のままだったら、Thread.current#raiseを再定義して、スレッドをたくさん作るズルができそう。絶対お金払ったほうが安く済むけど。

Rubyでsandbox作るのは難しいよ、というお話です。ズル推奨じゃなくてw

## Jun 22, 2010 From: ryoqun@g...

小野寺です。

久々になります。今日は参加の予定です。よろしくお願いします。

2010/6/22 NAKAMURA, Hiroshi \<nakahiro@g...\>:

> Herokuと言えば、無料だとThreadひとつ、とからしいじゃないですか。あれってtimeoutはどうなってるんでしょう。自前で再実装してあるのかな。1.8標準のは遅いから（httpclientやWEBrick、1.9、Rubinius、JRubyのは速い）。
> 
> 標準のままだったら、Thread.current#raiseを再定義して、スレッドをたくさん作るズルができそう。絶対お金払ったほうが安く済むけど。
> 
> Rubyでsandbox作るのは難しいよ、というお話です。ズル推奨じゃなくてw
## Jun 22, 2010 From: ronnie@d...

なんか参加できそうなので参加しまーす。

- -

Akira Matsuda\<ronnie@d...\>

## Jun 23, 2010 From: shibata.hiroshi@g...

nahi さんへ

昨日の asakusa.rb で rack の下で cgi は動かないみたいなことを  
言ったかもしれませんが、Rack::Handler::Cgi.run を使うと  
Rack インタフェースに準拠したアプリが apache などのCGIの上で動きます。

しかし、既存のCGIアプリがRackの上ですぐに動くかというと  
そういうわけではなく、Rackインタフェースに合わせる層が  
必要なので某アプリはとても大変という感じです。

* * *

SHIBATA Hiroshi [mailto:shibata.hiroshi@g...](mailto:shibata.hiroshi@g...)  
URL:[http://www.hsbt.org/](http://www.hsbt.org/)

## Jun 23, 2010 From: shintaro.kakutani@g...

cgi.rbのparamsがとにかく配列で返ってくるのがしんどいですねえ。  
1.9でなんとかなったりしないんですかね……。

たとえば  
require 'cgi/modern\_params' したら  
イマどきっぽいCGI#params になるとか……。

2010/6/23 SHIBATA Hiroshi \<shibata.hiroshi@g...\>:

> nahi さんへ
> 
> 昨日の asakusa.rb で rack の下で cgi は動かないみたいなことを 言ったかもしれませんが、Rack::Handler::Cgi.run を使うと Rack インタフェースに準拠したアプリが apache などのCGIの上で動きます。
> 
> しかし、既存のCGIアプリがRackの上ですぐに動くかというと そういうわけではなく、Rackインタフェースに合わせる層が 必要なので某アプリはとても大変という感じです。
* * *

Kakutani Shintaro

## Jun 23, 2010 From: nakahiro@g...

2010/6/23 SHIBATA Hiroshi \<shibata.hiroshi@g...\>:

> 昨日の asakusa.rb で rack の下で cgi は動かないみたいなことを 言ったかもしれませんが、Rack::Handler::Cgi.run を使うと Rack インタフェースに準拠したアプリが apache などのCGIの上で動きます。

わざわざありがとうございました。助かります。WSGI的なことにはなっていた、と。

ま、現行CGIにあわせて書いている人が、Rackインターフェースに移行するかどうか、  
簡単か、というのは別の話で、tDiaryは大変なんですね。

以前Asakusa.rbでqwikの作者さんがやられていた時は、「お、意外に簡単じゃん」的な  
ノリでしたが、あれは元からアプリ側でそういう配慮がなされていた感じではありました。

