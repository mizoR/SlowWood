# Slow Wood

Swiftの勉強をするためのプロジェクトです。

プロジェクト名の Slow Wood は 結婚前に妻とよくランチに行っていたお店の名前から拝借しており 特に意味はありません。

## 動かすまでの手順

### SlowWood の取得

```sh
$ git clone https://github.com/mizoR/SlowWood.git

# clone したディレクトリに移動しておく
$ cd SlowWood
```

### Submodule の取得

```sh
$ git submodule init      # 初回だけ
$ git submodule update
```

### gem をインストール

```sh
$ bundle install
```

### Objective-C のライブラリをインストール

```sh
$ bundle exec pod setup     # 初回だけ
$ bundle exec pod install
```

### Xcode で起動

```sh
$ open SlowWood.xcworkspace
```

### ビルドと実行

:arrow_forward: ボタンを押すと、ビルドが開始され、成功するとシミュレータ上でアプリが開きます
