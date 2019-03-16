# データベース設計

## users テーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null:false, index: true|
### Association
- has_many :articles, dependent: :destroy
- has_many :comments, dependent: :destroy
- has_many :likes, dependent: :destroy


## articlesテーブル
|Column|Type|Options|
|------|----|-------|
|text|text||
|image|text||
|user|references|null: false,foreign_key: true|
### Association
- belongs_to :users
- has_many :comments, dependent: :destroy
- has_many :likes, dependent: :destroy



## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null:false, index: true|
|user|references|null: false,foreign_key: true|
|article|references|null: false,foreign_key: true|
### Association
- belongs_to :user
- belongs_to :article


## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null:false, foreign_key: true|
|article|references|null: false,foreign_key: true|
### Association
- belongs_to :user
- belongs_to :article




