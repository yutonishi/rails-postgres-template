# 前提

以下のアプリ、および拡張機能がインストールされていることを前提としています。


- [Visual Studio Code](https://code.visualstudio.com/)
- [Docker Desktop](https://www.docker.com/products/docker-desktop/)
- [Dev Containers](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers)
<br>
<br>
# 開発環境構築

## リポジトリをクローン
```
$ git clone git@github.com:yutonishi/rails-postgres-template.git
$ cd rails-postgres-template
```
<br>

## ビルド
```
$ docker compose build
$ docker compose run web yarn install
```
<br>

## Remote Containerに入る（コンテナの起動）
本ディレクトリをVSCodeで開き、「緑のマーク」 > 「Reopen in Container」でRemote Containerに入る。
<br>
これで各コンテナが起動する。

<br>

## データベースを作成
```
# rails db:create db:migrate db:seed
```
<br>

## Rails Serverを起動
Remote Container内で下記を実行するとRails Serverが起動すると同時に、Webpackのコンパイルが実行される。
```
# bin/dev
```
<br>

[http://0.0.0.0:3000](http://0.0.0.0:3000)にアクセスできることを確認する。
