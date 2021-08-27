# アプリケーション名

company

# アプリケーション概要

企業が人を今までの人ではなく、今どんな人なのかを見てくれるといいなという思いで作成しました。

# URL デプロイ済みの URL を記述。デプロイが済んでいない場合は、デプロイが完了次第記述すること。

https://company-36385.herokuapp.com/

# テスト用アカウント ログイン機能等を実装した場合は、ログインに必要な情報を記述。また Basic 認証等を設けている場合は、その ID/Pass も記述すること。

pochi.com777@gmail.com aaaaaa

# 利用方法 このアプリケーションの利用方法を記述。

自己紹介などを参照にして気になる企業とマッチングをし、チャットができるようになること

# 目指した課題解決 このアプリケーションを通じて、どのような人の、どのような課題を解決しようとしているのかを記述。

アプリ内の会社概要と同一になりますが、人間関係や労働環境が辛くてたまらないのに今の職場から離れるという選択肢ができない方や、自分は歳もとっていて社会に貢献できるスキルがないからと塞ぎ込んでしまっている方達に向けて、一人でも多くの方達が働くことが楽しい、人生が幸せだと感じていただけるといいなと思い企業とのマッチングという視点で構想してみました。一人で尚且つ短時間で作っているので構想や機能もまだまだ改善の余地しかございません。

# 洗い出した要件 スプレッドシートにまとめた要件定義を記述。

user 情報のテーブル（ユーザーの詳細情報）
reaction リアクションをするためのテーブル（した人、された人、ステータス）
chat_message マッチングした user とのチャット機能（メッセージ内容、誰から？、どこのルームから？）
chat_room チャットをするためのテーブル (誰がいるのか？)
chat_room_user user と chat_room の関係性が多対多になるため中間テーブルを作成

# 実装予定の機能 洗い出した要件の中から、今後実装予定の機能がある場合は、その機能を記述。

紹介企業の欄に各企業の一覧と詳細、そこから送信できる機能や heroku 上でも画像保存ができるように AWS を搭載したいと思います。

# データベース設計 ER 図等を添付。

[![Image from Gyazo](https://i.gyazo.com/dd864c08f1ad458fe4d1d306b4e5c538.png)](https://gyazo.com/dd864c08f1ad458fe4d1d306b4e5c538)

# ローカルでの動作方法 git clone してから、ローカルで動作をさせるまでに必要なコマンドを記述。この時、アプリケーション開発に使用した環境を併記することを忘れないこと（パッケージや Ruby のバージョンなど）。

https://git.heroku.com/company-36385.git

# README

## users テーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| name               | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |
| gender             | string | null: false               |
| profile_image      |        |                           |
| self_introduction  | text   | null: false               |

### Association

has_many :messages
has_many :sonsulations

## companys テーブル

| Column        | Type   | Options     |
| ------------- | ------ | ----------- |
| name          | string | null: false |
| introduction  | string | null: false |
| profile_image |        |             |

### Association

has_many :messages
has_many :consulations

## messages テーブル

| Column  | Type      | Options          |
| ------- | --------- | ---------------- |
| user    | reference | foreign_key:true |
| company | reference | foreign_key:true |
| text    | string    | null: false      |

### Association

belongs_to :user
belongs_to :company

## consultations テーブル

| Column     | Type      | Options          |
| ---------- | --------- | ---------------- |
| title      | string    | null: false      |
| reason     | string    | null: false      |
| user_id    | reference | foreign_key:true |
| company_id | reference | foreign_key:true |

### Association

belongs_to :user
belongs_to :company

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...
