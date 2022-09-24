# Tearip（ティリップ）
茶摘み体験に特化した予約サービスです。
URL: https://tearip.com/  

## アプリの概要
日本では、平地で機械摘みしている茶園が多いですが、なかには、傾斜地で手摘みしている茶園もあります。  
手摘みは、芽を見ながら、人の手で行われるので、とても時間と労力が掛かります。  
Tearipは、旅行者に楽しみながら茶摘みをしてもらい、「お茶ファン」となってもらうことを目的とした、茶摘み体験に特化した予約サービスです。  

## アプリの機能
- 体験検索機能（ransack）
- 体験予約機能
- 体験投稿機能
- お気に入り登録機能（非同期処理）
- GoogleMap表示機能（GoogleMap API）  
- 体験にコメントを付ける機能（raty）
- 認証機能（devise）  
- 画像投稿機能（S3,carrierwave）
- ページネーション機能（kaminari）
## 使用技術
- フロントエンド
    - HTML/CSS/Sass/Bootstrap
- バックエンド
    - Ruby(2.6.5→3.1.1)
    - Rails(6.0.3.4→6.1.6.1)
- インフラ
    - GitHub Actions(CI/CD)
        - CI: Rubocop/RSpecを使った自動テスト
        - CD: ECR/ECSへの自動デプロイ、デプロイ完了後にSlackへ通知
    - Docker(20.10.17)/docker-compose(2.10.2)
    - Nginx(1.23.1)
    - Postgres
    - AWS(ECS(Fargate)/ALB/ACM/S3/RDS/Route53/CloudWatch/VPC/IAM)
- その他使用ツール
    - Visual Studio Code
    - Slack
    - draw.io

## 使い方
1.画面右上の「ログイン」からテストユーザでログイン  
2.体験一覧ページから予約したい体験をクリック  
3.体験詳細ページから「予約する」をクリック  

## インストール
    $ git clone https://github.com/Takao-Yamasaki/tea_party
    $ cd tea_party
    $ docker-compose -f docker-compose-prod.yml up -d

## インフラ構成図

## DB設計
### ER図
### 各テーブルについて
## 今後の実装予定
- Rails7系へのバージョンアップ
- 管理画面の実装
- 開発用と本番環境用の`Dockerfile`及び`docker-compose.yml`を統合
    - 開発環境用: `Dockerfile` / `docker-compose.yml`
    - 本番環境用: `Dockerfile.prod` / `DOckerfile.nginx` / `docker-compose-prod.yml`
- Rspecを使ったテストコードの追加
- レスポンシブデザインの実装  
