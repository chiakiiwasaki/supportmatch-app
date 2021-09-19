# SupportMatch

![85DAD654-A57A-4B12-AC35-2C11412B26D5_1_105_c](https://user-images.githubusercontent.com/83531077/133929143-26183dc9-4160-4922-98c9-c951f75db579.jpeg)


## サイト概要

**SupportMatch**は災害時の「支援したい」「支援が必要」をつなぐ**女性向け**サービスです。

- 「支援が必要」な方は物品名や数量などを記入し、依頼します。
- 「支援したい」方は依頼一覧や依頼詳細を見て、依頼者にチャットでメッセージを送ります。チャット上でやり取りをした上で、「支援したい」側が配送料を負担し、伝えられた配送先に郵送してもらう仕組みです。
- 支援する側・される側いずれも女性限定とすることで、生理用品の種類や下着のサイズ、化粧品など細かな内容も含めた依頼がしやすくなります。
- ほかに、思っていることや被災下の不安、悩み、困りごとなどを共有・相談できる投稿機能も備えています。平時は、これまでの災害で感じたことや体験を共有する場としても活用でき、普段から親しみを持ってもらうことで災害時により有効に活用していただきたいと考えています。


### サイトテーマ

**Survive together**

助け合うことで災害時の生活を改善するためのマッチングサイト


### テーマを選んだ理由

日本は災害大国とも呼ばれ、誰でもいつでも被災する可能性があります。
いざ災害が起きた時、被災者のニーズは多様で、行政などが全てを汲み取ることは容易ではありません。
近年の大規模災害ではインターネットを使って支援物資やボランティアのマッチングが行われるなど、IT技術の活用は今後も見込まれます。

頻繁に災害が起きる中、最近特にクローズアップされるようになっている一つに女性たちを巡る問題があります。

「生理用ナプキンの個包装が『一人一つずつ』支給される」

「女性用下着を男性が配布しているため、もらいに行きづらい」

「子どもが離乳食の時期だったが、ベビーフードなどはなく、子どもの食べ物をどうしようかと思った」

これらは東日本大震災や熊本地震で避難所を利用した女性たちから挙がった声です。

行政などは改善のために取り組んでいますが、IT技術を活用して何かの後押しができればと**SupportMatch**を作りました。
**SupportMatch**を通じ、少しでも被災時のニーズが満たせたらと思います。
また不安や悩みや困りごとを共有する場所として利用してもらい、被災下の孤独感や問題の解消につながればと考えています。


### ターゲットユーザー

- 被災して支援を依頼したい女性や、被災者を支援したい女性
- 被災して悩みや困りごとを周囲に相談できず困っている女性
- 被災者のニーズを把握したい行政・企業など


## 機能一覧
### ◆ユーザー側
|  機能  |  ログイン時  |  非ログイン時  |
| ------ | ----------|-------------| 
|メールアドレスまたはSNS認証で会員登録|×|○|
|ログイン|×|○|
|ログアウト|○|×|
|問い合わせフォームを送信|○|○|
|トップページを表示|○|○|
|Aboutページを表示|○|○|
|お届け完了した依頼一覧を表示|○|○|
|お届け未了の依頼一覧・詳細を表示|○|×|
|依頼を検索|○|×|
|依頼を投稿・編集・削除|○|×|
|依頼者とチャット|○|×|
|相談事などの投稿一覧・詳細を表示|○|×|
|投稿内容を感情分析|○|×|
|投稿詳細を表示|○|×|
|投稿・削除|○|×|
|投稿へいいね(Ajax)|○|×|
|投稿へのコメントを投稿・削除(Ajax)|○|×|
|他の会員をフォロー|○|×|
|会員詳細を表示・編集|○|×|
|退会|○|×|
|会員ごとのチャット一覧を表示|○|×|
|会員ごとの依頼一覧を表示|○|×|
|会員ごとの投稿一覧を表示|○|×|
|会員ごとのフォロー・フォロワー一覧を表示|○|×|


### ◆管理者側
|  機能  |  ログイン時  |  非ログイン時  |
| ------ | --------- | ----------- | 
|ログイン|×|○|
|ログアウト|○|×|
|依頼一覧・詳細を表示|○|×|
|依頼内容や進捗ステータスを編集|○|×|
|会員一覧・詳細を表示|○|×|
|会員情報編集・退会|○|×|
|投稿一覧・詳細を表示|○|×|
|投稿・コメントの表示・非表示を切り替え|○|×|

### ◆使用技術等
- Google Natural Language API
- kaminari(ページング)
- ransack(検索)
- refile, mini_magick（画像投稿）
- devise（ログイン認証）
- Facebook API, Google API(SNS認証)
- ActionCable(リアルタイムチャット)
- ActionMailer(問い合わせ)


## 設計書

- UI Flows（https://drive.google.com/file/d/1R4oIfvaZ4VUC5iA95cqhyqkUk1CoF44e/view?usp=sharing）
- ER図（https://drive.google.com/file/d/1Q6K_SY_tvTUosS7zTfJP8M6uILOiuU-A/view?usp=sharing）
- テーブル定義書（https://docs.google.com/spreadsheets/d/1DIKNc0RZxmG3-hrE_V1sbrTD7_tAhxm1SSyMcKbAl1k/edit?usp=sharing）
- アプリケーション詳細設計（https://docs.google.com/spreadsheets/d/11o15hrfZVM_wNU5SKUcY3N2HVLePS8z1b8TeEU9QH6U/edit?usp=sharing）


## チャレンジ要素一覧

<https://docs.google.com/spreadsheets/d/1vWFefWEORxEut2yM5uv-iDBp1n3b1lR-tn4BUSPFsmg/edit?usp=sharing>


## 開発環境

- OS：Linux(CentOS)
- 言語：HTML,CSS,JavaScript,Ruby,SQL
- フレームワーク：Ruby on Rails
- JS ライブラリ：jQuery
- IDE：Cloud9

## 使用素材
【画像素材】
- O-DAN(https://o-dan.net/ja/)

【アイコン素材】
- ICOOON MONO(https://icooon-mono.com/)
- エーオーシステム(https://ao-system.net/alphaicon/)

【フォント素材】
- font space(https://www.fontspace.com/)
