## Tweetテーブル

|Column|Type|Options|
|------|----|-------|
|body|text||
|image|string||
|target|references|null: false, foreign_key: true|
|user|references|null: false, foreign_key: true|
|tag|references|null: false, foreign_key: true|

### Association

- belongs_to :target
- belongs_to :user
- belongs_to :tag
- has_many :users, through: :likes


## Userテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique: true|
|email|string|null: false, unique: true|
|password|string|null: false,|
|profile|text||
|icon|string||

### Association

- has_many :tweets
- has_many :liked_tweets, through: :likes, source: :tweet
- has_many :targets
<!-- フォロー機能実装時に必要 -->
<!-- お返し報告機能実装時に必要-->


## Targetsテーブル

|Column|Type|Options|
|------|----|-------|
|initial|VARCHAR(3)|null: false|
|name|string|null: false|
|memo|text||
|present|boolean||
|image|string||

### Association

- has_many :messages
- belongs_to :user


## Tagテーブル

|Column|Type|Options|
|------|----|-------|
|name|text|null: false|

### Association

- belongs_to :tweet

## Likeテーブル

|Column|Type|Options|
|------|----|-------|
|user|references|null: false, foreign_key: true|
|group|references|null: false, foreign_key: true|

### Association

- belongs_to :group
- belongs_to :user