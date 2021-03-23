# アプリ名
okurimono

# 概要
お年玉や、お祝い事、誕生日などで頂いたり誰かに贈り物をした際に記録を付けることができます。
贈ったものを振り返ったり、また違う形で誰かにプレゼントを贈る際のヒントにもなります。
同じものをプレゼントする失敗も回避できます。
# 本番環境

# 制作背景
私は兄弟が多く甥と姪、親戚含め十数人のお年玉を毎年準備していたのですが、
毎年どの子にいくらお年玉をあげたのか忘れてしまい金額の調整に困っていました。
そこでお本件のようなアプリがあれば気軽に楽しく記録できると考えました。
また、お年玉に限らずお祝い事やプレゼントなど使用用途を幅広く使えることも魅力だと感じております。
# DEMO
イメージ図
![イメージ図](https://i.gyazo.com/701d83f979bb6473f391135a1dfe6407.png)

# 工夫したポイント

# 開発環境
## バックエンド
* Ruby
* Ruby on Rails
## フロントエンド
HTML CSS
## データベース
MySQL
## テスト
RSpec
## エディタ
VSCode

# 課題、今後の実装機能

# DB設計
## usersテーブル
|Colum              |Type   |Options    |
|-------------------|-------|-----------|
|name               |string |null:false |
|email              |string |null:false |
|encrypted_password |string |null:false |
|birth_data         |date   |null:false |
### Association
has_many :contents
## contentsテーブル
|Colum       |Type       |Options                     |
|------------|-----------|----------------------------|
|year        |integer    |null:false                  |
|month       |integer    |null:false                  |
|day         |integer    |null:false                  |
|name        |string     |null:false                  |
|title       |string     |null:false                  |
|money       |integer    |null:false                  |
|text        |string     |null:false                  |
|category_id |integer    |null:false                  |
|user        |references |null:false,foreign_key:true |
### Association
belongs_to :user 
