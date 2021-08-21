# README

## users テーブル

| Column             | Type   | Options 　                |
| ------------------ | ------ | ------------------------- |
| name               | string | null: false 　            |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false 　            |
| gender             | string | null: false 　            |
| profile_image      |        | 　                        |
| self_introduction  | text   | null: false 　            |

### Association

has_many :reactions
has_many :chat_room_users
has_many :chat_rooms, through: :chat_room_users
has_many :chat_messages

## chat_messages テーブル

| Column  | Type      | Options          |
| ------- | --------- | ---------------- |
| user    | reference | foreign_key:true |
| item    | reference | foreign_key:true |
| content | string    | null: false 　   |

### Association

belongs_to :user
belongs_to :chat_room

## reactions テーブル

| Column | Type      | Options          |
| ------ | --------- | ---------------- |
| status | string    | null: false      |
| user   | reference | foreign_key:true |
| item   | reference | foreign_key:true |

### Association

belongs_to :to_user, class_name: "User"
belongs_to :from_user, class_name: "User"

## chat_room_users テーブル

| Column       | Type      | Options          |
| ------------ | --------- | ---------------- |
| chat_room_id | reference | foreign_key:true |
| user_id      | reference | foreign_key:true |

### Association

belongs_to :chat_room
belongs_to :user

## chat_rooms テーブル

| Column | Type | Options |
| ------ | ---- | ------- |

### Association

has_many :chat_room_users
has_many :users, through: :chat_room_users
has_many :chat_room_users

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
