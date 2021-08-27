# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create!(email: "admin@email.com",
              password: "aaaaaa")

User.create!(name: "はなこ",
             email: "example@email.com",
             password: "aaaaaa",
             introduction: "東京都在住です",
             created_at: "2021-08-01 00:00")

User.create!(name: "yamada",
             email: "yamada@email.com",
             password: "aaaaaa",
             introduction: "よろしくお願いします",
             created_at: "2021-08-01 00:00")

User.create!(name: "ヨウコ",
             email: "yoko@email.com",
             password: "aaaaaa",
             introduction: "千葉県在住です",
             created_at: "2021-08-01 00:00")

User.create!(name: "すずき",
             email: "suzuki@email.com",
             password: "aaaaaa",
             introduction: "こんにちは",
             created_at: "2021-08-01 00:00")

User.create!(name: "ゆみ",
             email: "yumi@email.com",
             password: "aaaaaa",
             introduction: "埼玉県在住です",
             created_at: "2021-08-01 00:00")

User.create!(name: "たなか",
             email: "tanaka@email.com",
             password: "aaaaaa",
             introduction: "よろしくお願いいたします",
             created_at: "2021-08-01 00:00")

User.create!(name: "hanako",
             email: "hanako@email.com",
             password: "aaaaaa",
             introduction: "神奈川県在住です",
             created_at: "2021-08-01 00:00")

User.create!(name: "ごうだ",
             email: "goda@email.com",
             password: "aaaaaa",
             introduction: "ごうだです",
             created_at: "2021-08-01 00:00")

User.create!(name: "ゆき",
             email: "yuki@email.com",
             password: "aaaaaa",
             introduction: "長野県在住です",
             created_at: "2021-08-01 00:00")

User.create!(name: "なかむら",
             email: "nakamura@email.com",
             password: "aaaaaa",
             introduction: "大阪在住です",
             created_at: "2021-08-01 00:00")

User.create!(name: "かな",
             email: "kana@email.com",
             password: "aaaaaa",
             introduction: "山梨県在住です",
             created_at: "2021-08-01 00:00")

User.create!(name: "おおた",
             email: "oota@email.com",
             password: "aaaaaa",
             introduction: "よろしくお願いします",
             created_at: "2021-08-01 00:00")

User.create!(name: "由美子",
             email: "yumiko@email.com",
             password: "aaaaaa",
             introduction: "東京都在住です",
             created_at: "2021-08-01 00:00")

User.create!(name: "おおいし",
             email: "ooishi@email.com",
             password: "aaaaaa",
             introduction: "九州に住んでいます",
             created_at: "2021-08-01 00:00")

User.create!(name: "もえ",
             email: "moe@email.com",
             password: "aaaaaa",
             introduction: "北海道在住です",
             created_at: "2021-08-01 00:00")

User.create!(name: "はやかわ",
             email: "hayakawa@email.com",
             password: "aaaaaa",
             introduction: "北海道に住んでいます",
             created_at: "2021-08-01 00:00")

User.create!(name: "こいし",
             email: "koishi@email.com",
             password: "aaaaaa",
             introduction: "よろしくお願いします",
             created_at: "2021-08-01 00:00")

User.create!(name: "さいとう",
             email: "saito@email.com",
             password: "aaaaaa",
             introduction: "こんにちは",
             created_at: "2021-08-01 00:00")

User.create!(name: "いわた",
             email: "iwata@email.com",
             password: "aaaaaa",
             introduction: "東京都に住んでいます",
             created_at: "2021-08-01 00:00")

User.create!(name: "かつまた",
             email: "katumata@email.com",
             password: "aaaaaa",
             introduction: "神奈川県に住んでいます",
             created_at: "2021-08-01 00:00")


Request.create!(user_id: 7,
                urgency: 1,
                item: "Tシャツ",
                quantity: "10枚",
                comment: "Lサイズのゆったりしたシルエットのものを希望です",
                postal_code: "0000000",
                location: "神奈川県横浜市",
                phone_number: "09000000000",
                email: "hanako@email.com",
                name: "山田花子",
                genre: 2,
                created_at: "2021-08-21 07:03")

Request.create!(user_id: 3,
                urgency: 0,
                item: "生理用品",
                quantity: "5パック",
                genre: 3,
                created_at: "2021-08-21 08:11")

Request.create!(user_id: 1,
                urgency: 1,
                item: "夏用の衣類",
                quantity: "20人分",
                postal_code: "0000000",
                location: "東京避難所",
                phone_number: "08000000000",
                name: "鈴木花子",
                genre: 2,
                created_at: "2021-08-21 09:23")

Request.create!(user_id: 1,
                urgency: 0,
                item: "生理用品",
                quantity: "20人分",
                postal_code: "0000000",
                location: "東京避難所",
                phone_number: "08000000000",
                name: "鈴木花子",
                genre: 1,
                created_at: "2021-08-22 11:35")

Request.create!(user_id: 13,
                urgency: 0,
                item: "ショーツ",
                quantity: "10枚",
                comment: "綿製品のMサイズ希望です",
                postal_code: "1111111",
                location: "東京都23区内",
                phone_number: "09011111111",
                email: "yumiko@email.com",
                name: "小川由美子",
                genre: 2,
                created_at: "2021-08-22 18:03")

Request.create!(user_id: 18,
                urgency: 0,
                item: "ベビーフード",
                quantity: "2人/2週間分",
                location: "神奈川県川崎市内",
                genre: 4,
                created_at: "2021-08-23 08:46")

Request.create!(user_id: 10,
                urgency: 0,
                item: "化粧水",
                quantity: "1本",
                genre: 3,
                created_at: "2021-08-23 09:24")

Request.create!(user_id: 3,
                urgency: 0,
                item: "生理用ナプキン",
                quantity: "5パック",
                comment: "昼用と夜用を計5パックお願いします",
                postal_code: "2222222",
                location: "千葉県千葉市0-0-0",
                phone_number: "09022222222",
                email: "yoko@email.com",
                name: "鈴木洋子",
                genre: 1,
                created_at: "2021-08-24 15:52")

Request.create!(user_id: 5,
                urgency: 1,
                item: "化粧水と乳液",
                quantity: "ボトル1本ずつ",
                comment: "無添加のもの希望です",
                postal_code: "3333333",
                location: "埼玉県埼玉市0-0-0",
                phone_number: "09033333333",
                email: "yumi@email.com",
                name: "伊藤夕美",
                genre: 3,
                created_at: "2021-08-24 18:02")

Request.create!(user_id: 20,
                urgency: 0,
                item: "ブラジャー",
                quantity: "5着",
                genre: 2,
                created_at: "2021-08-24 20:34")

Request.create!(user_id: 2,
                urgency: 0,
                item: "ベビーフード",
                quantity: "10日分",
                comment: "1歳の子どもが食べます",
                postal_code: "0001111",
                location: "東京都渋谷区",
                phone_number: "09000001111",
                email: "yamada@email.com",
                name: "山田はるか",
                genre: 4,
                created_at: "2021-08-24 23:21")

Request.create!(user_id: 1,
                urgency: 2,
                item: "スウェット",
                quantity: "10着",
                postal_code: "0000000",
                location: "東京避難所",
                phone_number: "08000000000",
                name: "鈴木花子",
                genre: 2,
                created_at: "2021-08-25 10:36")