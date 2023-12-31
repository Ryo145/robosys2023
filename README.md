# robosys2023
このリポジトリは千葉工業大学先進工学部未来ロボティクス学科４sのロボットシステム学の講義で使用したものである。  
このリポジトリには２つのコマンドがある。

# インストール方法
適当な場所にこのリポジトリをクローンして使用する。  
以下でクローン出来る。
```
$ git clone https://github.com/Ryo145/robosys2023.git
```

# plusコマンド
[![test](https://github.com/Ryo145/robosys2023/actions/workflows/test.yml/badge.svg)](https://github.com/Ryo145/robosys2023/actions/workflows/test.yml)

標準入力から読み込んだ数字を足す。

## 実行例

```
$ seq 6|./plus
```

## 実行結果

```
21
```


# vbnコマンド
[![test1](https://github.com/Ryo145/robosys2023/actions/workflows/test1.yml/badge.svg)](https://github.com/Ryo145/robosys2023/actions/workflows/test1.yml)

標準入力から読み込んだ数字を四則演算する。

## 実行例

```
$ ./vbn 4 8
```

## 実行結果

```
12.0  
-4.0  
32.0  
0.5  
```

↑加算,減算,乗算,除算

# 必要なソフトウェア
* Python
  * テスト済み: 3.7~3.10 
 
# テスト環境
* Ubuntu 22.04.2 LTS

# 著作権・ライセンス
* このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます． 
* このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
  * [ryuichiueda/my_slides/robosys_2022](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2022) 
* © 2023 Ryosuke Suzuki
