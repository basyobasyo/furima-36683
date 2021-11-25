# テーブル設計

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| nickname           | string  | null: false               |
| email              | string  | null: false , unique: true|
| encrypted_password | string  | null: false               |
| last_name          | string  | null: false               |
| first_name         | string  | null: false               | 
| last_name_kana     | string  | null: false               |
| first_name_kana    | string  | null: false               | 
| birthday           | date    | null: false               |

 - has_many :items
 - has_many :buyers

## items テーブル

| Column             | Type       | Options                         |
| ------------------ | ---------- | ------------------------------- |
| item_name          | string     | null: false                     |
| item_explanation   | text       | null: false                     |
| price              | integer    | null: false                     |
| category_id        | integer    | null: false                     |
| status_id          | integer    | null: false                     |
| shipping_fee_id    | integer    | null: false                     | 
| prefecture_id      | integer    | null: false                     |
| days_to_ship_id    | integer    | null: false                     | 
| user               | references | null: false , foreign_key: true |

 - belongs_to :user
 - has_one :buyer

## buyers テーブル

| Column               | Type       | Options                         |
| -------------------- | ---------- | ------------------------------- |
| user                 | references | null: false , foreign_key: true |
| item                 | references | null: false , foreign_key: true | 

 - belongs_to :user
 - belongs_to :item
 - has_one :address

## addresses テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| postal_code      | string     | null: false                    |
| prefecture_id    | integer    | null: false                    |
| municipalities   | string     | null: false                    |
| address          | string     | null: false                    |
| building         | string     |                                |
| telephone_number | string     | null: false                    |
| buyer            | references | null: false, foreign_key: true |

 - belongs_to :buyer

