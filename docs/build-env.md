# 環境構築

ここでは、C++プログラムを作成して実行できるようになるための準備をします。こういった準備は一般に**環境構築**と呼ばれています。

## プログラムを作成して実行するまでの流れ

1. `.cpp`ファイルを書く
    - テキストエディタ(VSCodeなど)が必要
    - このファイルはソースコードと呼ばれる
2. 作成したファイルをコンピュータが実行できる形式に翻訳する
    - コンパイル
    - コンパイラが必要(ここではGCC)
    - 翻訳に成功すると実行可能ファイルが生成される
3. 生成されたバイナリを実行する
    - bashでのコマンド書式

TODO: 文章にする

## Windowsでの環境構築

- WSL2でbuild-essential
- VSCodeはwindows側に入れてRemote Development拡張機能で繋げる

TODO

## macOSでの環境構築

- Xcode command line tools → homebrew
- VSCodeはbrew install --cask visual-studio-code

TODO

## Linux(Ubuntu)での環境構築

- Debianのbuild-essentialに準ずるもの
- VSCodeもaptで入れる

TODO

## 動作確認

TODO: Hello, worldを書いてコンパイル、実行

## 参考文献

TODO: なんかあったら
