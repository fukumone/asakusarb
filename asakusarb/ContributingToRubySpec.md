## RubySpecの修正と報告

### rubyspecを修正するにあたって

ひと通りのドキュメントは [http://rubyspec.org/wiki/rubyspec](http://rubyspec.org/wiki/rubyspec) にまとまっているので、目を通しておくとよい。以下は、読んでみたり、やってみた感想などをつらつらと。

読んでおいたほうが良さそうなもの：

#### sharedについて

(あとで/だれか書く)

#### 1.8 と 1.9 での仕様の違いを表現する

- [http://rubyspec.org/wiki/rubyspec/Ruby\_19\_Issues](http://rubyspec.org/wiki/rubyspec/Ruby_19_Issues) ... いちばん最後に1.8と1.9とで仕様が異なる場合のspecの書きかたが載ってる
- [http://rubyspec.org/wiki/rubyspec/Guards](http://rubyspec.org/wiki/rubyspec/Guards) ... specを実行する条件について。あとでもうちょっと補足。 **ruby\_version\_is に注意** -- kakutani
- [http://rubyspec.org/wiki/rubyspec/Style\_Guide](http://rubyspec.org/wiki/rubyspec/Style_Guide) -- コーディング規約とか。あとで読む

### 報告する

[http://rubyspec.org/wiki/rubyspec/Contributing](http://rubyspec.org/wiki/rubyspec/Contributing)

- githubからpull requestは **しない**
- rubyspecの[RedMineのチケット](http://rubyspec.org/projects/rubyspec/issues)に、git format-patch 形式でつくったパッチをファイル添付する

#### 報告例

英語とか気にしない!!

- [http://rubyspec.org/issues/show/149](http://rubyspec.org/issues/show/149)
- [http://rubyspec.org/issues/show/150](http://rubyspec.org/issues/show/150)
