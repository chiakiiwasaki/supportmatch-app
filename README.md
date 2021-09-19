# SupportMatch
**SupportMatchは災害時の「支援したい」「支援が必要」をつなぐ女性向けサービスです**

![AD8F6DB3-64C5-474F-B2F7-2501C269C029_1_105_c](https://user-images.githubusercontent.com/83531077/133929735-08046693-34b6-4831-ad4b-d20f4f4b5404.jpeg)

URL:https://support-match.com/

```
【会員アカウント】※入力不要のゲストログインもご利用いただけます
メールアドレス：example@email.com
パスワード：aaaaaa

【管理者アカウント】
ログインURL:https://support-match.com/admins/sign_in
メールアドレス：admin@email.com
パスワード：aaaaaa
```

## サイト概要
**互いに助け合い、災害を乗り越えよう**

SupportMatchは災害時の支援物資のマッチングサイトです。大規模災害が頻繁に起きる中、支援物資のミスマッチも度々起きており、IT技術の活用によって改善が図れればとSupportMatchをつくりました。
また災害時の女性特有の問題も近年、クローズアップされています。支援する側・支援される側いずれも女性限定とすることで、生理用品の種類や下着のサイズといった細かな内容も含めたニーズを汲み取ることができると考えています。

### 使い方

- 「支援が必要」な方は物品名や数量などをサイト上で記入し、依頼します
- 「支援したい」方は依頼一覧や依頼詳細を見て、依頼者にチャットでメッセージを送ります。チャット上でやり取りをした上で、伝えられた配送先に郵送していただきます
- ほかに、思っていることや被災下の不安、悩み、困りごとなどを共有・相談できるSNS機能も備えています。平時は、これまでの災害で感じたことや体験を共有する場としても活用でき、普段から親しみを持ってもらうことで、災害時により有効に活用していただきたいと考えています


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
