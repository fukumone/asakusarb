## 第305回Asakusa.rb (2015-04-21)

## Apr 20, 2015 From: takkanm@g...

明日は 304 回目のミートアップの日です。

明日も上野永和にて行ないたいと思います。

ふと、ActionView の options\_for\_select の selected を proc で指定できると  
便利かなーと思いパッチを書いたものの、ほんとにこのユースケースが有なのかわからなくなったので、  
意見を聞きたいです。

This week meetup is going to be held tomorrow evening, at same place in  
Ueno.

[https://www.google.com/maps/place/%E6%97%A5%E6%9C%AC,+%E3%](https://www.google.com/maps/place/%E6%97%A5%E6%9C%AC,+%E3%)  
80%92110-0005+%E6%9D%B1%E4%BA%AC%E9%83%BD%E5%8F%B0%E6%9D%B1%  
E5%8C%BA%E4%B8%8A%E9%87%8E%EF%BC%92%E4%B8%81%E7%9B%AE%EF%BC%  
97%E2%88%92%EF%BC%97+%E4%B8%8A%E9%87%8E%EF%BC%A8%EF%BC%B3%  
E3%83%93%E3%83%AB/@35.7093426,139.7729658,17z/data=!3m1!4b1!  
4m2!3m1!1s0x60188e9fd53ee00f:0x3eb92e29711f432

## Apr 20, 2015 From: shibata.hiroshi@g...

柴田です。

参加します。  
Ruby の stdlib のメンテナリストの更新をやりつつ  
参加者に利用頻度を聞いたり、Gemify の計画を建てようと思います。

2015-04-20 13:43 GMT+09:00 \<takkanm@g...\>:

> 明日は 304 回目のミートアップの日です。
> 
> 明日も上野永和にて行ないたいと思います。
> 
> ふと、ActionView の options\_for\_select の selected を proc で指定できると 便利かなーと思いパッチを書いたものの、ほんとにこのユースケースが有なのかわからなくなったので、 意見を聞きたいです。
> 
> This week meetup is going to be held tomorrow evening, at same place in Ueno.
> 
> [https://www.google.com/maps/place/%E6%97%A5%E6%9C%AC,+%E3%80%92110-0005+%E6%9D%B1%E4%BA%AC%E9%83%BD%E5%8F%B0%E6%9D%B1%E5%8C%BA%E4%B8%8A%E9%87%8E%EF%BC%92%E4%B8%81%E7%9B%AE%EF%BC%97%E2%88%92%EF%BC%97+%E4%B8%8A%E9%87%8E%EF%BC%A8%EF%BC%B3%E3%83%93%E3%83%AB/@35.7093426,139.7729658,17z/data=!3m1!4b1!4m2!3m1!1s0x60188e9fd53ee00f:0x3eb92e29711f432](https://www.google.com/maps/place/%E6%97%A5%E6%9C%AC,+%E3%80%92110-0005+%E6%9D%B1%E4%BA%AC%E9%83%BD%E5%8F%B0%E6%9D%B1%E5%8C%BA%E4%B8%8A%E9%87%8E%EF%BC%92%E4%B8%81%E7%9B%AE%EF%BC%97%E2%88%92%EF%BC%97+%E4%B8%8A%E9%87%8E%EF%BC%A8%EF%BC%B3%E3%83%93%E3%83%AB/@35.7093426,139.7729658,17z/data=!3m1!4b1!4m2!3m1!1s0x60188e9fd53ee00f:0x3eb92e29711f432)
* * *

SHIBATA Hiroshi hsbt@r...  
[http://www.hsbt.org/](http://www.hsbt.org/)

## Apr 20, 2015 From: ronnie@d...

RailsConfに参加中のためお休みします。

2015-04-20 13:43 GMT+09:00 \<takkanm@g...\>:

> > ふと、ActionView の options\_for\_select の selected を proc で指定できると 便利かなーと思いパッチを書いたものの、ほんとにこのユースケースが有なのかわからなくなったので、 意見を聞きたいです。

なるほど。アリかもしれない気がしますね。  
カンファレンス中にぷるりくれればねじ込みますというか話題ぐらいにはしておきますよ。

* * *

Akira Matsuda\<ronnie@d...\>

## Apr 20, 2015 From: takkanm@g...

2015年4月20日 15:32 Akira Matsuda \<ronnie@d...\>:

> なるほど。アリかもしれない気がしますね。 カンファレンス中にぷるりくれればねじ込みますというか話題ぐらいにはしておきますよ。

おぉ。  
わたしは options\_for\_select とかを使うのが、helper だったり decorator  
なりで書くことが多いため、こういう発想になったのですが、  
view に書く場合は、view にロジックがベタ書きになる可能性があるのでイマイチかなぁと迷っていました。  
だすだけだしてみます。

## Apr 21, 2015 From: spiketeika@g...

金子です。

参加します。  
Railsのコメントとか修正する予定です。

2015年4月20日 16:12 \<takkanm@g...\>:

> 2015年4月20日 15:32 Akira Matsuda \<ronnie@d...\>:
> 
> > なるほど。アリかもしれない気がしますね。 カンファレンス中にぷるりくれればねじ込みますというか話題ぐらいにはしておきますよ。
> 
> おぉ。 わたしは options\_for\_select とかを使うのが、helper だったり decorator なりで書くことが多いため、こういう発想になったのですが、 view に書く場合は、view にロジックがベタ書きになる可能性があるのでイマイチかなぁと迷っていました。 だすだけだしてみます。
## Apr 21, 2015 From: yasu1000@g...

安川です。

久しぶりの参加ですが、よろしくお願いします。  
RailsガイドやRailsチュートリアルのIssue対応などをしようかなと考えています。

    1. ++++++++++++++

YASUKAWA, Yohei

yasulab@g...  
[http://yasslab.jp/](http://yasslab.jp/)

    1. ++++++++++++++

2015年4月21日 10:54 kaneko y \<spiketeika@g...\>:

> 金子です。
> 
> 参加します。 Railsのコメントとか修正する予定です。
> 
> 2015年4月20日 16:12 \<takkanm@g...\>:
> 
> > 2015年4月20日 15:32 Akira Matsuda \<ronnie@d...\>:
> > 
> > > なるほど。アリかもしれない気がしますね。 カンファレンス中にぷるりくれればねじ込みますというか話題ぐらいにはしておきますよ。
> > 
> > おぉ。 わたしは options\_for\_select とかを使うのが、helper だったり decorator なりで書くことが多いため、こういう発想になったのですが、 view に書く場合は、view にロジックがベタ書きになる可能性があるのでイマイチかなぁと迷っていました。 だすだけだしてみます。
