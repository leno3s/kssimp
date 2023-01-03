# kssimp

Image processor for Kindle screen saver

## これについて

linkssなどを利用してKindle paperwhiteのスクリーンセーバーをカスタムするさい、グレースケール変換およびファイル名の連番リネームを行うMakefile環境。

## 要求

* GNU Make
* awk
* ImageMagick
  * `convert` コマンドでのグレースケール変換に利用する

## 使い方

1. 変換したいPNG画像を `target/` 以下に配置する
2. `make all` を実行する
3. `out/` 以下にlinkssで配置できるような連番画像ファイルが生成される

なお変換時に画像のリサイズは行わないため、必要であればユーザー側でクロップまたはリサイズを行ってから `target/` 以下に配置する必要がある。

解像度は以下に合わせる。

* PW2: 768px x 1024px
* PW3,4: 1072px x 1448px
* PW5: 1236px x 1648px
