# テーブル設計

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| nickname           | string  | null: false , unique: true|
| email              | string  | null: false , unique: true|
| encrypted_password | string  | null: false               |
| last_name          | string  | null: false               |
| first_name         | string  | null: false               | 
| birthday           | integer | null: false               |

 - has_many :items
 - has_many :buyers

## items テーブル

| Column            | Type      | Options                         |
| ----------------- | --------- | ------------------------------- |
| item_name         | string    | null: false                     |
| item_explanation  | text      | null: false                     |
| price             | integer   | null: false                     |
| category          | string    | null: false                     |
| status            | string    | null: false                     |
| shipping_fee      | integer   | null: false                     | 
| shipment_source   | string    | null: false                     |
| days_to_ship      | integer   | null: false                     | 
| user              | reference | null: false , foreign_key: true |

 - belongs_to :user
 - has_one :buyer

## buyers テーブル

| Column               | Type      | Options                         |
| -------------------- | --------- | ------------------------------- |
| credit_card_number   | integer   | null: false,                    |
| date_of_expiry       | integer   | null: false                     |
| security_code        | integer   | null: false                     |
| user                 | reference | null: false , foreign_key: true |
| item                 | reference | null: false , foreign_key: true | 

 - belongs_to :user
 - belongs_to :item
 - has_one :address

## addresses テーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| postal_code      | integer    | null: false                    |
| prefecture       | string     | null: false                    |
| municipalities   | string     | null: false                    |
| address          | string     | null: false                    |
| building         | string     | null: false                    |
| telephone_number | integer    | null: false,                   |
| buyer            | references | null: false, foreign_key: true |

 - belongs_to :buyer

