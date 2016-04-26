## 第16回Asakusa.rb(2009-09-01)

### 日時

2009/09/01 19:30～23:00ぐらい

### 場所

永和システムマネジメント 東京支社[http://www.esm.co.jp/company/map\_tokyo.html](http://www.esm.co.jp/company/map_tokyo.html)

### 内容
> > じゃあ今日のお題はqwikスペシャルですかね。
> 
> qwik.jpの処理速度がなかなか改善しなくて困ってます。 RecentChanges機能が原因かもと思ってましたが、ハズレだったみたい。 今はBackup機能の問題かもと思ってます。
> 
> こんなモグラ叩きみたいな方法じゃなくて、きちんと原因を確かめる方法が あるとうれしいのですが、みなさんの知恵をお借りしたいです。
### 参加者

- 角谷さん @kakutani
- 三村さん @takkanm
- 江渡さん @eto
- 松田さん @a\_matsuda
- 郡司さん @gunjisatoshi
- レオさん @lchin
- 宮内さん @fistfvck

### qwikスペシャル

- ソースどこよ?

  - [http://rubyforge.org/projects/qwik/](http://rubyforge.org/projects/qwik/)
- qwik.jpは江渡さんの知り合いの会社でホスティングしてもらっている

  - CPUは Pen4 3.0GHz
  - メモリは ??GB # FIXME
  - rubyのバージョンは1.8.2
- qwik.jpは重くなると、メモリをもりもり消費し始める(2GBぐらい)
- rubyで消費メモリを知る方法は？

  - psコマンド?
  - ruby-prof?

    - 1.8.2じゃ使えないかな…
- qwikは1.8.6でも1.8.7でも動きますよ by 松田さん

  - ruby自体の問題じゃなさそうなんで、バージョンアップしても直らなさそう by 江渡さん
- ソース読む
- rubyで全オブジェクトを取得するにはどうするんですか? by 江渡さん

  - $local\_variables とか $global\_variables ?
  - ObjectSpace.each\_objectと判明
- オブジェクトのクラス名とクラス数を表示するアクション作った by 江渡さん

  - [http://qwik.rubyforge.org/svn/qwik/lib/qwik/act-status.rb](http://qwik.rubyforge.org/svn/qwik/lib/qwik/act-status.rb)
- StringとPathname多い…

  - [http://qwik.rubyforge.org/svn/qwik/lib/qwik/util-pathname.rb](http://qwik.rubyforge.org/svn/qwik/lib/qwik/util-pathname.rb)
- なんでGCされないの?

  - 誰かがリファレンス握ってるからねー
  - じゃあ誰よ?
- ソース読む
- (中略)
- ソース読む
- qwik.jpのヒストリ機能のデモをしてもらう

  - マウスのX軸の動きで、ページのヒストリがぬるぬる動く

    - すげー!!
  - Y軸の動きは関係ないよ
- [db-indexer.rb](http://qwik.rubyforge.org/svn/qwik/lib/qwik/db-indexer.rb) 見るとSennaのインデックスに登録してるっぽいけど、なんか関係ありますか?

  - 現在はSennaに登録はしてない(?)から関係ないと思います by 江渡さん
- qwikは江渡さんがほぼ一人で開発されたそうです
- [server.rb](http://qwik.rubyforge.org/svn/qwik/lib/qwik/server.rb) ここで@memory.farm渡してますけど、これじゃfarmはGCされませんよね?(現在は修正済)

    threads << WeeklySendReportThread.new(@memory.farm)
          threads << DailySendReportThread.new(@memory.farm)
          threads << HourlySendReportThread.new(@memory.farm)

  - そうかも by 江渡さん
- ちょと止めます by 江渡さん

  - qwik.jp再起動中
- qwik.jpのアーカイブ機能を使うと、ローカルAsakusa.rbができますね by 松田さん
- 現在のqwikのデータストアはただのファイルだけど、そこをgitにするqwik2を開発中
- 22時になるとHourlySendReportThreadが動き出すから、確認しましょう
- 実行中は[Site](http://qwik.rubyforge.org/svn/qwik/lib/qwik/site.rb)が増加するが、終了後には減ってる

  - GCされてるっぽい!
  - qwik.jp倒せた!!
  - でも、RSSは減ってないですね…。(rubyプロセス自体が(確保している|使っている)メモリの量?)
- rvmのURL面白いよね～ [http://rvm.beginrescueend.com/](http://rvm.beginrescueend.com/) by レオさん

  - methodmissingさんとかもいるし、面白いな by 角谷さん

## Aug 26, 2009 From: shintaro@k...

かくたにです。

来週火曜日のAsakusa.rbですが、  
このまま永和の東京支社でいいんですかね？  
[http://qwik.jp/asakusarb/esm\_ueno.html](http://qwik.jp/asakusarb/esm_ueno.html)

場所がどこであれ、参加される方はこのメールに返信ください。  
たぶん、Webのアーカイブは  
[http://qwik.jp/asakusarb/hack016.html](http://qwik.jp/asakusarb/hack016.html)  
になってる(はず)。

あと、第15回のログのようなものをお持ちのかたはいらっしゃいますか？  
もしあれば、↓の上のほうに追記してもらえるとうれしいです。吉川さんとか!  
 [http://qwik.jp/asakusarb/hack015.html](http://qwik.jp/asakusarb/hack015.html)

いま、qwikっぽく、参加表明のスレッドと  
議事録のまとめをひとつのURLで実現できないか試してます。

こんな感じ↓  
[http://qwik.jp/asakusarb/63.html](http://qwik.jp/asakusarb/63.html)  
URLについて「番号だと味気ない」と松田さんにツッコミをもらったので、  
hachNNNという名前にしてみました(松田さんが気に入りそうだと思って)  
[http://qwik.jp/asakusarb/64.html](http://qwik.jp/asakusarb/64.html)

- -

{ :name: "Shintaro"[![create](.theme/i/new.png)](.new?t=%22KAKUTANI%22%2C),

    :email: shintaro.kakutani@g..., :website: http://kakutani.com/ }

## Aug 26, 2009 From: ronnie@d...

松田です。

On 2009/08/26, at 11:24, KAKUTANI Shintaro wrote:

> 来週火曜日のAsakusa.rbですが、 このまま永和の東京支社でいいんですかね？[http://qwik.jp/asakusarb/esm\_ueno.html](http://qwik.jp/asakusarb/esm_ueno.html)
> 
> 場所がどこであれ、参加される方はこのメールに返信ください。 たぶん、Webのアーカイブは[http://qwik.jp/asakusarb/hack016.html](http://qwik.jp/asakusarb/hack016.html)になってる(はず)。

参加します！

場所は今のところしばらく永和さんを使わせていただけたら良いなぁ、  
と思っております。  
ご迷惑じゃなければ。

> いま、qwikっぽく、参加表明のスレッドと 議事録のまとめをひとつのURLで実現できないか試してます。
> 
> こんな感じ↓[http://qwik.jp/asakusarb/63.html](http://qwik.jp/asakusarb/63.html)URLについて「番号だと味気ない」と松田さんにツッコミをもらっ たので、 hachNNNという名前にしてみました(松田さんが気に入りそ うだと思って)[http://qwik.jp/asakusarb/64.html](http://qwik.jp/asakusarb/64.html)

なるほど。いろいろとご配慮ありがとうございます。  
参加表明とまとめを一つのページにしちゃうのは賛成です。  
でも、気に入る/気に入らないはともかくとして、  
過去何回かのページが NNN\_log っていう名前で  
作られているので、何かに統一するんだったら  
それでいいんじゃないかなぁ、という気もします  
最初から「log」って名前で募集ページを立てるのって  
変ですかねぇ？変ですよね・・・

- -

Akira Matsuda\<ronnie@d...\>

## Aug 26, 2009 From: shintaro.kakutani@g...

かくたにです。

2009/8/26 Akira Matsuda \<ronnie@d...\>:

> それでいいんじゃないかなぁ、という気もします 最初から「log」って名前で募集ページを立てるのって 変ですかねぇ？変ですよね・・・

変だなー、と思ったのでhackにしてみたけど、だめ?

あと、subjectをそろえておけばWebサイトからじゃなくて、  
メールでWebもいっしょに更新されるのはけっこう便利だと  
あらためて思う今日この頃

- -

KAKUTANI Shintaro  
[http://kakutani.com](http://kakutani.com)

## Aug 27, 2009 From: gunjisatoshi@g...

郡司です。

風邪で8/25は参加できなかったので、9/1は参加したいです！

> あと、第15回のログのようなものをお持ちのかたはいらっしゃいますか？ もしあれば、↓の上のほうに追記してもらえるとうれしいです。吉川さんとか![http://qwik.jp/asakusarb/hack015.html](http://qwik.jp/asakusarb/hack015.html)

参加できなかったので私も期待してます！

あと第14回のログ↓ありがとうございました！＞松田さん  
[http://qwik.jp/asakusarb/63.html](http://qwik.jp/asakusarb/63.html)

2009/08/26 11:24 に KAKUTANI Shintaro\<shintaro.kakutani@g...\> さんは書きました:

> かくたにです。
> 
> 来週火曜日のAsakusa.rbですが、 このまま永和の東京支社でいいんですかね？[http://qwik.jp/asakusarb/esm\_ueno.html](http://qwik.jp/asakusarb/esm_ueno.html)
> 
> 場所がどこであれ、参加される方はこのメールに返信ください。 たぶん、Webのアーカイブは[http://qwik.jp/asakusarb/hack016.html](http://qwik.jp/asakusarb/hack016.html)になってる(はず)。
> 
> あと、第15回のログのようなものをお持ちのかたはいらっしゃいますか？ もしあれば、↓の上のほうに追記してもらえるとうれしいです。吉川さんとか![http://qwik.jp/asakusarb/hack015.html](http://qwik.jp/asakusarb/hack015.html)
> 
> いま、qwikっぽく、参加表明のスレッドと 議事録のまとめをひとつのURLで実現できないか試してます。
> 
> こんな感じ↓[http://qwik.jp/asakusarb/63.html](http://qwik.jp/asakusarb/63.html)URLについて「番号だと味気ない」と松田さんにツッコミをもらったので、 hachNNNという名前にしてみました(松田さんが気に入りそうだと思って)[http://qwik.jp/asakusarb/64.html](http://qwik.jp/asakusarb/64.html)
> 
> - -
> 
> { :name: "Shintaro"[![create](.theme/i/new.png)](.new?t=%22KAKUTANI%22%2C),
> 
> <dl>
> <dt>email</dt>
> <dd>shintaro.kakutani@g..., :website: <a class="external" href="http://kakutani.com/">http://kakutani.com/</a> }</dd>
> </dl>
> - -
> 
> archive-\> [http://qwik.jp/asakusarb/hack016.html](http://qwik.jp/asakusarb/hack016.html)ML-\> asakusarb@q...
## Aug 31, 2009 From: shintaro.kakutani@g...

かくたにです。

他の議論を混ぜちゃいましたが、このスレは16回参加用のスレだったりするのでリマインド。

あした、0901 19:30 - 21:30 です。場所は永和の東京支社です:  
[http://qwik.jp/asakusarb/esm\_ueno.html](http://qwik.jp/asakusarb/esm_ueno.html)

いまの参加予定は:

- @a\_matsuda
- @gunjisatoshi
- @kakutani

かな?

2009/8/27 Satoshi GUNJI \<gunjisatoshi@g...\>:

> 郡司です。
> 
> 風邪で8/25は参加できなかったので、9/1は参加したいです！
> 
> > あと、第15回のログのようなものをお持ちのかたはいらっしゃいますか？ もしあれば、↓の上のほうに追記してもらえるとうれしいです。吉川さんとか![http://qwik.jp/asakusarb/hack015.html](http://qwik.jp/asakusarb/hack015.html)
> 
> 参加できなかったので私も期待してます！
> 
> あと第14回のログ↓ありがとうございました！＞松田さん[http://qwik.jp/asakusarb/63.html](http://qwik.jp/asakusarb/63.html)
> 
> 2009/08/26 11:24 に KAKUTANI Shintaro\<shintaro.kakutani@g...\> さんは書きました:
> 
> > かくたにです。
> > 
> > 来週火曜日のAsakusa.rbですが、 このまま永和の東京支社でいいんですかね？[http://qwik.jp/asakusarb/esm\_ueno.html](http://qwik.jp/asakusarb/esm_ueno.html)
> > 
> > 場所がどこであれ、参加される方はこのメールに返信ください。 たぶん、Webのアーカイブは[http://qwik.jp/asakusarb/hack016.html](http://qwik.jp/asakusarb/hack016.html)になってる(はず)。
> > 
> > あと、第15回のログのようなものをお持ちのかたはいらっしゃいますか？ もしあれば、↓の上のほうに追記してもらえるとうれしいです。吉川さんとか![http://qwik.jp/asakusarb/hack015.html](http://qwik.jp/asakusarb/hack015.html)
> > 
> > いま、qwikっぽく、参加表明のスレッドと 議事録のまとめをひとつのURLで実現できないか試してます。
> > 
> > こんな感じ↓[http://qwik.jp/asakusarb/63.html](http://qwik.jp/asakusarb/63.html)URLについて「番号だと味気ない」と松田さんにツッコミをもらったので、 hachNNNという名前にしてみました(松田さんが気に入りそうだと思って)[http://qwik.jp/asakusarb/64.html](http://qwik.jp/asakusarb/64.html)
> > 
> > - -
> > 
> > { :name: "Shintaro"[![create](.theme/i/new.png)](.new?t=%22KAKUTANI%22%2C),
> > 
> > <dl>
> > <dt>email</dt>
> > <dd>shintaro.kakutani@g..., :website: <a class="external" href="http://kakutani.com/">http://kakutani.com/</a> }</dd>
> > </dl>
> > - -
> > 
> > archive-\> [http://qwik.jp/asakusarb/hack016.html](http://qwik.jp/asakusarb/hack016.html)ML-\> asakusarb@q...
> - -
> 
> archive-\> [http://qwik.jp/asakusarb/hack016.html](http://qwik.jp/asakusarb/hack016.html)ML-\> asakusarb@q...
- -

KAKUTANI Shintaro  
[http://kakutani.com](http://kakutani.com)

## Aug 31, 2009 From: ko1@a...

　ささだです．

KAKUTANI Shintaro wrote::

> 他の議論を混ぜちゃいましたが、このスレは16回参加用のスレだったりするのでリマインド。
> 
> あした、0901 19:30 - 21:30 です。場所は永和の東京支社です:[http://qwik.jp/asakusarb/esm\_ueno.html](http://qwik.jp/asakusarb/esm_ueno.html)

　明日は東京に居ません．残念．

- -

// SASADA Koichi at atdot dot net

## Sep 1, 2009 From: fistfvck@g...

宮内です。

直前ですいませんが、本日参加します。

2009年8月26日11:24 KAKUTANI Shintaro \<shintaro.kakutani@g...\>:

> かくたにです。
> 
> 来週火曜日のAsakusa.rbですが、 このまま永和の東京支社でいいんですかね？[http://qwik.jp/asakusarb/esm\_ueno.html](http://qwik.jp/asakusarb/esm_ueno.html)
> 
> 場所がどこであれ、参加される方はこのメールに返信ください。 たぶん、Webのアーカイブは[http://qwik.jp/asakusarb/hack016.html](http://qwik.jp/asakusarb/hack016.html)になってる(はず)。
> 
> あと、第15回のログのようなものをお持ちのかたはいらっしゃいますか？ もしあれば、↓の上のほうに追記してもらえるとうれしいです。吉川さんとか![http://qwik.jp/asakusarb/hack015.html](http://qwik.jp/asakusarb/hack015.html)
> 
> いま、qwikっぽく、参加表明のスレッドと 議事録のまとめをひとつのURLで実現できないか試してます。
> 
> こんな感じ↓[http://qwik.jp/asakusarb/63.html](http://qwik.jp/asakusarb/63.html)URLについて「番号だと味気ない」と松田さんにツッコミをもらったので、 hachNNNという名前にしてみました(松田さんが気に入りそうだと思って)[http://qwik.jp/asakusarb/64.html](http://qwik.jp/asakusarb/64.html)
> 
> - -
> 
> { :name: "Shintaro"[![create](.theme/i/new.png)](.new?t=%22KAKUTANI%22%2C),
> 
> <dl>
> <dt>email</dt>
> <dd>shintaro.kakutani@g..., :website: <a class="external" href="http://kakutani.com/">http://kakutani.com/</a> }</dd>
> </dl>
> - -
> 
> archive-\> [http://qwik.jp/asakusarb/hack016.html](http://qwik.jp/asakusarb/hack016.html)ML-\> asakusarb@q...
## Sep 1, 2009 From: takkanm@g...

ミムラ aka takkanmです。  
本日参加したいです。

## Sep 1, 2009 From: etocom2009@g...

みなさま、

江渡です。こんにちは。

本日参加したいです。よろしくおねがいします。

## Sep 1, 2009 From: ronnie@d...

おおおー！ほんとに江渡さんが来られてしまうとは！！  
じゃあ今日のお題はqwikスペシャルですかね。

- -

Akira Matsuda\<ronnie@d...\>

## Sep 1, 2009 From: etocom2009@g...

まつださん、

> おおおー！ほんとに江渡さんが来られてしまうとは！！ じゃあ今日のお題はqwikスペシャルですかね。

qwik.jpの処理速度がなかなか改善しなくて困ってます。  
RecentChanges機能が原因かもと思ってましたが、ハズレだったみたい。  
今はBackup機能の問題かもと思ってます。

こんなモグラ叩きみたいな方法じゃなくて、きちんと原因を確かめる方法が  
あるとうれしいのですが、みなさんの知恵をお借りしたいです。  
よろしくおねがいいたします。

## Sep 2, 2009 From: etocom2009@g...

みなさま、

江渡です。お疲れ様です。

今日はAsakusa.rbに初参加させていただき、どうもありがとうございました。  
qwik.jpの改善についてみていただき、本当に助かりました。

先程backup機能を改善したのですが、まだ完全復活にはならず。  
あとはrss.xml機能に問題があるようです。  
これを改善すればだいぶよくなるはずです。

ともあれ、おかげさまでだいぶ改善され、先が見えてきました。  
今日は本当にありがとうございました。  
また今後ともよろしくおねがいいたします。

## Sep 2, 2009 From: gunjisatoshi@g...

郡司です。

こちらこそ、いつもお世話になっているqwikWebの中身を見せていただくという  
貴重な機会を頂き、ありがとうございました。すごく楽しかったです！

しかしチューニングは奥が深いですねえ。Rubyの動作にも深くかかわってくるので、  
次回は是非Rubyコミッタの方々にも参加いただいてチューニングしたいですね ;-)

2009年9月2日1:44 Kouichirou Eto \<etocom2009@g...\>:

> みなさま、
> 
> 江渡です。お疲れ様です。
> 
> 今日はAsakusa.rbに初参加させていただき、どうもありがとうございました。 qwik.jpの改善についてみていただき、本当に助かりました。
> 
> 先程backup機能を改善したのですが、まだ完全復活にはならず。 あとはrss.xml機能に問題があるようです。 これを改善すればだいぶよくなるはずです。
> 
> ともあれ、おかげさまでだいぶ改善され、先が見えてきました。 今日は本当にありがとうございました。 また今後ともよろしくおねがいいたします。
> 
> - -
> 
> archive-\> [http://qwik.jp/asakusarb/hack016.html](http://qwik.jp/asakusarb/hack016.html)ML-\> asakusarb@q...
## Sep 8, 2009 From: etocom2009@g...

みなさま、

江渡です。お世話になっております。

前回のAsakusa.rbでは、  
qwikWebのトラブル対応について相談にのっていただき、  
ありがとうございました。

qwikWebの問題ですが、おかげさまで解決しました。  
最大の原因は、spamが作った巨大なページでした。  
spamがコメント欄に情報を入力していて、巨大なページが作られていました。  
このページを表示しようとするたびに数GBくらいメモリを使ってしまい、  
これによってメモリが足りなくなっていました。  
ページの最大の大きさを設定し、100KB以上のページは表示しないように  
することで解決しました。

とのことで、最大の原因はわかったのですが、その過程で他の色々な場所も  
改良したので、そのおかげで全体の動作がだいぶ速くなりました。  
みなさまのおかげと感謝しております。  
本当にありがとうございました!

