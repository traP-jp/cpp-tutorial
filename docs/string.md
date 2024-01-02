# 文字列

C++とCの最も目につく違いのひとつです. Cにおいては文字列は文字型charの配列として扱っていました[^char_array]. これは単純な構造である反面, 文字列の結合などの際に配列の範囲外アクセスなどに気を配らなければならずあまり扱いやすいものとは言えませんでした. C++では専用の文字列型が用意されており, 文字列に対して行いたい操作を比較的簡単に実現可能です.

## 文字列の表現方法
Cと同様にC++においては文字列はダブルクォーテーション`"`で囲まれた領域を指す(例:`"Hello World!"`). 対して文字列はシングルクォーテーション`'`で囲まれたものを指す.
文字列を囲んでいる`"`の前に所定のプレフィックスをつけると文字列リテラルを表現することが可能です[^literal].

## 文字列の型
C++の文字型はCと同様に引き続き`char`型です. C++の文字列の型で最もよく見かけるのは`std::string`だと思います. `std::string`は`std::basic_string`クラスへのエイリアスの一つでASCIIやUTF-8の文字列やバイト配列での使用を想定しています. 他にもエイリアスは存在し例えば比較的よくみかける`std::wstring`はUTF-16の文字列として使用します[^basic_string].
以後`std::string`を使って説明を行いますが, 他の`std::basic_string`へのエイリアスにも同様のことがいえます. `std::string`はクラスであるので多様なメンバ関数を持っています. これらのメンバ関数は動的配列の`std::vector`のものと似た機能を提供します. いかにそのいくつかを示します.

```cpp filename="string_example.cpp"
#include <string>

int main()
{
  // 文字列からstd::stringオブジェクトを構築
  std::string s = "hello";

  // 末尾に文字列を追加
  s += " world";

  // 部分文字列を取得(始点:0、始点からの文字数:5)
  std::string hello = s.substr(0, 5);

  // 他の文字列との比較
  bool match = hello.compare(s.substr(0, 5)); //true
  bool mismatch = hello.compare(s); //false
  
  // 文字を末尾に追加する
  s.push_back('!');
  
  // 文字列の末尾の一要素を削除する
  s.pop_back();

  // 文字列の長さを確認する
  int len = s.length();

  // 先頭へのイテレータを取得する
  auto it = s.begin();
}
```

C++の文字列と数値の変換は`std::string`のメンバ関数には含まれませんが, C++標準ライブラリに関数として組み込まれています[^string].
代表的なもとのとして`std:stoi`や`std:to_string`があります.

## 制御文字やエスケープシーケンスについて
C++ではCと同様に文字列中にエスケープシーケンスを用いて制御文字を含めることができます. 制御文字とは改行や空白などをさしていて, コンピュータ上ではそれらも文字の一種として扱われます.
たとえば`\n`は改行,`\t`は空白のエスケープシーケンスです. 

ToDo: CRLF, std::format, 制御文字詳しく



[^char_array]: [苦しんで覚えるC言語-文字列を扱う方法](https://9cguide.appspot.com/14-02.html)
[^literal]: [C++日本語リファレンス-sリテラル](https://cpprefjp.github.io/reference/string/basic_string/op_s.html)
[^basic_string]: [C++日本語リファレンス-basic_string](https://cpprefjp.github.io/reference/string/basic_string.html)
[^string]: [C++日本語リファレンス-string](https://cpprefjp.github.io/reference/string.html)
