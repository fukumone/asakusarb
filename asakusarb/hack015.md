## 第15回 Asakusa.rb (2009-08-25)

### 日時

2009/8/25(Tue) 19:30～22:15

### 場所

永和システムマネジメント 東京支社  
[http://www.esm.co.jp/company/map\_tokyo.html](http://www.esm.co.jp/company/map_tokyo.html)

### 内容

wycatsさんの提案を巡って。また、丁度[前回](63.html)来てない人が多かったので全員でおさらい。

### 参加者（来た順）

松田さん  
諸橋さん  
三村さん  
かくたにさん  
吉川さん  
宮内さん  
レオさん  
志村さん  
ささださん

### procオブジェクトリテラルで{ }どうよの提案

- [ruby-core:25041~](http://blade.nagaokaut.ac.jp/cgi-bin/scat.rb/ruby/ruby-core/25041)

  - Hashリテラルとしてparseできなかった場合にProcオブジェクトとして評価
  - {}（空ハッシュオブジェクトのリテラル）は除く
  - ujihisa Patch!!
- wycats曰く、
> Yehuda Katz: Hello  
> Yehuda Katz: did you see ujihisa patch?  
> matsuda-akira: the {} one? yes.  
> matsuda-akira: I don't think it should be accepted,  
> matsuda-akira: 1.9 already has -\>{} literal  
> matsuda-akira: I think that's enough  
> Yehuda Katz: noooo :(  
> Yehuda Katz: I want  
> Yehuda Katz: why don't you like?  
> matsuda-akira: same as JEG II's answer  
> matsuda-akira: -\> {} syntax is not so bad to me  
> Yehuda Katz: that will stay  
> Yehuda Katz: -\>{} will be lambda literal  
> Yehuda Katz: {} will be proc literal  
> matsuda-akira: only {} is a bit confusing  
> matsuda-akira: with Hash literal  
> Yehuda Katz: {} is still Hash literal  
> Yehuda Katz: but { x } is proc  
> Yehuda Katz: we already have {} as block in many cases in Ruby  
> Yehuda Katz: foo {}{{br}} Yehuda Katz: this is block  
> Yehuda Katz: now we just make foo({ proc }) work same  
> Yehuda Katz: why you think foo { proc } not confusing now?

なるほど、なかなか説得力のある主張ではあります。

- 先週日曜日のRails勉強会でアンケートを取ったところ、9/30人は肯定

matsuda-akira: I just asked to 30 people now matsuda-akira: 9 Railers agreed with your new proc syntax matsuda-akira: and the rest disagreed Yehuda Katz: 9/30 eh :P

- 肯定派意見

  - なんかもう無名の質を感ずる（キメると気持ちいい）
  - これなしでは書けない（今のところwycatsさんのみ）
  - ブロック渡しがあるんだから、独立したブロックみたいな表記法がないとおかしい
  - 見かけの上で2つ以上のブロック渡しもできてるように見えるかも
  - 嫌いじゃない。そのほうが一貫性がある。(lchin)

- 否定派

  - ハッシュリテラルと表記がかぶってる事による曖昧さが生まれる（対人の可読性とか特に）
  - lambdaの新表記 -\>{} を使おうよ
  - lambdaとprocをそんなに厳密に区別する必要を感じない(kakutani)
  - ハッシュと紛らわしいからイヤです(takkanm)

- その他

  - どっちでもいい(fistfvck)
  - どうでもいい(ko1)
  - Hashと混同しないために、Procの場合は引数ナシでも {|| } って書くとかどうよ？(moro)

    - それは一度実装されたけど廃止された(nobu)
  - ちなみに確かGroovyも {} だよね？(ko1)

    - そうだっけ？そうだったかも？あんま覚えてない(kakutani) ← この発言はひどいw(参考資料: [http://kakutani.com/articles/LLW2004-LanguageUpdate-Groovy.live.pdf](http://kakutani.com/articles/LLW2004-LanguageUpdate-Groovy.live.pdf) )

- lambdaとProcの違いおさらい

  - breakでLocalJumpErrorが出たりの挙動の違いがあるよ
  - Procだとreturnで呼び出しのメソッドの処理が中断されたり
  - ブロック=Procオブジェクト

- 結論

  - 使ってみないと分からない、使ってみるといい感じかも？
  - 書いてるうちによい場面が出てくるのは確か
  - でも積極的に導入したくなる程の気力が湧く程のことでもない
  - こんなリテラルよりMashリテラルのほうがほしいです！

### GCパッチについて

#### 噂のセプキャンの学生が書いた5倍速くなるパッチっていうのは？

- ある特定の場合（nilとFixnumの比較とか）の高速化
- こんなやつ [http://svn.ruby-lang.org/cgi-bin/viewvc.cgi/trunk/vm\_insnhelper.c?r1=24547&r2=24546&pathrev=24547](http://svn.ruby-lang.org/cgi-bin/viewvc.cgi/trunk/vm_insnhelper.c?r1=24547&r2=24546&pathrev=24547)
- 実アプリが目に見えて速くなるってことはなさそう。みんなnilとFixnumを比べまくるアプリとか書いてないよね？

#### ささだ先生のGC講義

- Rubyのヒープ構造の説明
- 今のVMではメモリ確保時に横方向に拡張していく
- GCの時になかなか領域が解放されなくなってしまう
- 二分探索木のアルゴリズム
- 件のcopy on wrightパッチは線形探索しててへぼい。こんなんじゃ遅くなることもあるはず

  - REEのcopy on wright方式が取り込まれなかったのは（？失念）

    - forkを多用するプログラムでないと逆効果だったからと記憶(nobu)
- そこで、freeされやすいようにスロットのサイズを小さくして、線形探索するようにしてみる、というパッチを鋭意作成中

  - たたき台はセプキャンで書かれた(セプキャンこわい)
  - 現状の、メモリ確保を横に延ばすイメージから縦に延ばすイメージに
  - 検証のため、メモリをばかすか食うアプリを募集中！(特にRailsとか)

### ruby-debugの1.9support

- 作ってる人はいるみたい。ぎっはぶに上がってるらしい
- InfoQにも関連記事が載った by わーなーさん([http://www.infoq.com/news/2009/08/ruby19-rubydebug-macruby)](http://www.infoq.com/news/2009/08/ruby19-rubydebug-macruby))
- ついでにRuby Switcherの事も書かれてた([http://blog.thinkrelevance.com/2009/7/29/ruby-switcher-working-with-multiple-ruby-versions-has-never-been-this-easy)](http://blog.thinkrelevance.com/2009/7/29/ruby-switcher-working-with-multiple-ruby-versions-has-never-been-this-easy))

### hwia(HashWithIndifferentAccess)

- HashWithIndifferentAccessのC実装が(とりあえず)さっくり完成したという話
- ベンチはまあ置いておいて、hwiaって略称が良いよね
- けっこうできてきたみたい。Rails 2.3のテストケースをpassするってさ [http://blog.methodmissing.com/2009/08/29/alternative-hashwithindifferentaccess/](http://blog.methodmissing.com/2009/08/29/alternative-hashwithindifferentaccess/)

### お金の話...

- 某課題(オフレコ)がお金で解決できるか？という話
- 日本Rubyの会の活動資金は会長マネーに頼っている現状があったり
- そういえばRailsBridgeなんてコミュニティは微妙にお金の管理の話をしていたような([http://railsbridge.org/)](http://railsbridge.org/))

  - RailsBridgeは公式サイトみてみたら法人になってる！
  - 海の向うでは温度感というか、感覚がそもそも違う
- Rubyアソシエーションはどうなんですかねぇ？とか
- 微妙な大金はあるという話とか。人を雇って何かを成すには少額過ぎる
- Ruby Centralも法人だし、かくたにさんも企業すれば？？

  - 年収250万円もらえるならやるw！(kakutani)
- 生々しいけど、しなければいけない話ではある

### 1.9のRubySpecが機能していない件

- その前に実際RubySpec動かしてみたことあんまりない
- ここをみて [http://www.engineyard.com/blog/2009/what-is-rubyspec/](http://www.engineyard.com/blog/2009/what-is-rubyspec/)
- ここのをcloneして [http://github.com/rubyspec/rubyspec/tree/master](http://github.com/rubyspec/rubyspec/tree/master)
- 1.9でmspec実行するとEやFがチラホラ。segvも発生

  - ぜんぜん動いてないじゃん！
- hheってw
- 1.9.1でsegv時のエラーメッセージ末尾の"You may encountered..."は英語としていかがなものか(lchin)

  - じゃあこの場で直すよ！(ko1)
  - と思ったら、trunkでは"You may have encountered..."に既に訂正済だった
  - よい子のみんなはtrunkを使おう。
- RubySpecは今後Asakusa.rbでも取り組んでいきたいですね

  - ちなみに、Ruby添付ライブラリでテストカバレッジが一番高いのはRSS
  - じゃあ、今度須藤さんをお招きしてRubySpecスペシャルやるか！？

* * *

## Aug 24, 2009 From: shintaro@k...

かくたにです。  
メール出したつもりがdraftにいた!!

2009-08-25に第15回をやります。  
see also: [http://qwik.jp/asakusarb/60.html](http://qwik.jp/asakusarb/60.html)  
ご参加の方はこのメールにご返信ください。

* * *

{ :name: "Shintaro"[![create](.theme/i/new.png)](.new?t=%22KAKUTANI%22%2C),

    :email: shintaro@k..., :website: http://kakutani.com/ }

## Aug 24, 2009 From: ronnie@d...

松田です。

参加します！

- -

Akira Matsuda\<ronnie@d...\>

On 2009/08/24, at 9:06, KAKUTANI Shintaro wrote:

> かくたにです。 メール出したつもりがdraftにいた!!
> 
> 2009-08-25に第15回をやります。 see also: [http://qwik.jp/asakusarb/60.html](http://qwik.jp/asakusarb/60.html)ご参加の方はこのメールにご返信ください。
> 
> - -
> 
> { :name: "Shintaro"[![create](.theme/i/new.png)](.new?t=%22KAKUTANI%22%2C),
> 
> <dl>
> <dt>email</dt>
> <dd>shintaro@k..., :website: <a class="external" href="http://kakutani.com/">http://kakutani.com/</a> }</dd>
> </dl>
## Aug 24, 2009 From: tsuyoshikawa@g...

吉川です。

参加したいです！

2009/08/24 9:14 に Akira Matsuda\<ronnie@d...\> さんは書きました:

> 松田です。
> 
> 参加します！
> 
> - -
> 
> Akira Matsuda\<ronnie@d...\>
> 
> On 2009/08/24, at 9:06, KAKUTANI Shintaro wrote:
> 
> > かくたにです。 メール出したつもりがdraftにいた!!
> > 
> > 2009-08-25に第15回をやります。 see also: [http://qwik.jp/asakusarb/60.html](http://qwik.jp/asakusarb/60.html)ご参加の方はこのメールにご返信ください。
> > 
> > - -
> > 
> > { :name: "Shintaro"[![create](.theme/i/new.png)](.new?t=%22KAKUTANI%22%2C),
> > 
> > <dl>
> > <dt>email</dt>
> > <dd>shintaro@k..., :website: <a class="external" href="http://kakutani.com/">http://kakutani.com/</a> }</dd>
> > </dl>
> - -
> 
> archive-\> [http://qwik.jp/asakusarb/66.html](http://qwik.jp/asakusarb/66.html) ML-\> asakusarb@q...
* * *

吉川　毅\<tsuyoshikawa@g...\>

## Aug 24, 2009 From: l.g.chin@g...

レオです。

参加したい!

2009/8/24 吉川毅 \<tsuyoshikawa@g...\>:

> 吉川です。
> 
> 参加したいです！
> 
> 2009/08/24 9:14 に Akira Matsuda\<ronnie@d...\> さんは書きました:
> 
> > 松田です。
> > 
> > 参加します！
> > 
> > - -
> > 
> > Akira Matsuda\<ronnie@d...\>
> > 
> > On 2009/08/24, at 9:06, KAKUTANI Shintaro wrote:
> > 
> > > かくたにです。 メール出したつもりがdraftにいた!!
> > > 
> > > 2009-08-25に第15回をやります。 see also: [http://qwik.jp/asakusarb/60.html](http://qwik.jp/asakusarb/60.html)ご参加の方はこのメールにご返信ください。
> > > 
> > > - -
> > > 
> > > { :name: "Shintaro"[![create](.theme/i/new.png)](.new?t=%22KAKUTANI%22%2C), ?:email: shintaro@k..., :website: [http://kakutani.com/](http://kakutani.com/) }
> > - -
> > 
> > archive-\> [http://qwik.jp/asakusarb/66.html](http://qwik.jp/asakusarb/66.html) ML-\> asakusarb@q...
> - -
> 
> 吉川　毅\<tsuyoshikawa@g...\>
> 
> - -
> 
> archive-\> [http://qwik.jp/asakusarb/66.html](http://qwik.jp/asakusarb/66.html)ML-\> asakusarb@q...
## Aug 25, 2009 From: fistfvck@g...

宮内です。

参加したい!

2009/08/24 9:06 に KAKUTANI Shintaro\<shintaro@k...\> さんは書きました:

> かくたにです。 メール出したつもりがdraftにいた!!
> 
> 2009-08-25に第15回をやります。 see also: [http://qwik.jp/asakusarb/60.html](http://qwik.jp/asakusarb/60.html)ご参加の方はこのメールにご返信ください。
> 
> - -
> 
> { :name: "Shintaro"[![create](.theme/i/new.png)](.new?t=%22KAKUTANI%22%2C),
> 
> <dl>
> <dt>email</dt>
> <dd>shintaro@k..., :website: <a class="external" href="http://kakutani.com/">http://kakutani.com/</a> }</dd>
> </dl>
> - -
> 
> archive-\> [http://qwik.jp/asakusarb/66.html](http://qwik.jp/asakusarb/66.html)ML-\> asakusarb@q...
## Aug 25, 2009 From: shimura-hir@o...

到着20時回る(20時半くらい?)と思いますが参加したいです。

    志村 弘之

In message "[asakusarb:337] Re: 第15回 Asakusa.rb (2009-08-25)",   
\<5102a48d0908241535w12ca229dqc570b82baed91d60@m...\>,

    >> かくたにです。

    >> 2009-08-25に第15回をやります。
    >> see also: http://qwik.jp/asakusarb/60.html
    >> ご参加の方はこのメールにご返信ください。

    - ------------------------------------+---------+---------+以上 2009/8/25

志村弘之 mailto: shimura-hir@o...

## Aug 25, 2009 From: gunjisatoshi@g...

郡司です。

参加の予定だったのですが、風邪っぽいので  
時節柄大事をとって欠席します。すみません‥‥。

2009/08/24 9:06 に KAKUTANI Shintaro\<shintaro@k...\> さんは書きました:

> かくたにです。 メール出したつもりがdraftにいた!!
> 
> 2009-08-25に第15回をやります。 see also: [http://qwik.jp/asakusarb/60.html](http://qwik.jp/asakusarb/60.html)ご参加の方はこのメールにご返信ください。
> 
> - -
> 
> { :name: "Shintaro"[![create](.theme/i/new.png)](.new?t=%22KAKUTANI%22%2C),
> 
> <dl>
> <dt>email</dt>
> <dd>shintaro@k..., :website: <a class="external" href="http://kakutani.com/">http://kakutani.com/</a> }</dd>
> </dl>
> - -
> 
> archive-\> [http://qwik.jp/asakusarb/66.html](http://qwik.jp/asakusarb/66.html)ML-\> asakusarb@q...
## Aug 25, 2009 From: shimura-hir@o...

20時半無理でした。  
ちょっと途中参加難しいです、すいません。

    志村 弘之

In message "[asakusarb:338] Re: 第15回 Asakusa.rb (2009-08-25)",   
\<200908250457.AA01949@d...\>,   
H.Shimura wrote...

    >到着20時回る(20時半くらい?)と思いますが参加したいです。
    >
    > 志村 弘之
    >
    >In message "[asakusarb:337] Re: 第15回 Asakusa.rb (2009-08-25)", 
    ><5102a48d0908241535w12ca229dqc570b82baed91d60@m...>, 
    > >> かくたにです。
    >
    > >> 2009-08-25に第15回をやります。
    > >> see also: http://qwik.jp/asakusarb/60.html
    > >> ご参加の方はこのメールにご返信ください。
    >
    >---------------------------------------+---------+---------+以上 2009/8/25
    >
    >志村弘之 mailto: shimura-hir@o...
    >
    >
    >-- 
    >archive-> http://qwik.jp/asakusarb/66.html 
    >ML-> asakusarb@q...
    >

    - ------------------------------------+---------+---------+以上 2009/8/25

志村弘之 mailto: shimura-hir@o...

