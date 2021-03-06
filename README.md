# chatrade DB設計

## usersテーブル
|Column|Type|Options|
|------|----|———|
|nickname|string|null: false, unique: true, index: true|
|email|string|null: false|
|password|string|null: false|
|text|text||
### Association
- has_many :posts
- has_many :predictions
- has_many :forums_users
- has_many :forums, through: :forums_users


## predictionsテーブル
|Column|Type|Options|
|------|----|———|
|stockname|text|null: false, index: true|
|buyorsell|integer|null: false|
|time|integer|null: false|
(予想期間例：12月16日～12月20日）
|text|text||
|user|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :comments
- has_many :likes_pred


## commentsテーブル
|Column|Type|Options|
|------|----|———|
|text|text|null: false|
|emotion|integer||  (アンセストリーか、ラジオ)
|user|references|null: false, foreign_key: true|
### Association
- belongs_to :prediction


## postsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|image|text||
|user|references|null: false, foreign_key: true|
|forum|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :forum
- has_many :likes_posts


## forumsテーブル
|Column|Type|Options|
|------|----|-------|
|name|text|null: false, unique: true|
### Association
- has_many :posts
- has_many :forums_users
- has_many :forums, through: :forums_users


## forums_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|forum|references|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :forum


## likes-postsテーブル
|Column|Type|Options|
|------|----|-------|
|post|references|null: false, foreign_key: true|
### Association
- belongs_to :post


## likes-predテーブル
|Column|Type|Options|
|------|----|-------|
|prediction|references|null: false, foreign_key: true|
### Association
- belongs_to :prediction