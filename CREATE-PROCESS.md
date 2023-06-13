# 作成手順書

1. portfolio-shift の作成
2. 上記ディレクトリに移動し、rails new backend -d mysql --api でバックエンドディレクトリの作成
3. Gem ファイルに gem 'dotenv-rails'と gem 'rack-cors'を追記.
4. .env ファイルの作成。DATABASE_DEFAULT_USER = '<ユーザー名>'の形で環境変数作成。
5. database.yml ファイルに環境変数で接続方法等記述する。※.gitignore に/.env を忘れないこと。
6. routes.rb に下記記述。コントローラー名に対応した resource のルートが localhost:3000/api/v1 の形で続く。

```
Rails.application.routes.draw do
  namespace :api do
    namespace :v1, format: :json do
      resources :コントローラー名
    end
  end
end
```

7. rails g controller api::v1::コントローラー名 で先ほどの route に対応したコントローラーファイル作成
8. config/puma.rb ファイルの port ENV.fetch("PORT") { 3000 }この部分で port 番号の変更
9. config/initializers/cors.rb のコメントアウトを戻す。origins の部分で許可する URL は React の port 番号の URL。resource の許可ファイルは全てに設定。

```
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "http://localhost:3000"

    resource "*",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
```

10. Ruby の静的解析ツールの Gem を Gemfile に下記追加し bundle install する。

```
group :development do
  gem 'rubocop', require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
end
```

11. その後 bundle exec rubocop --auto-gen-config を打ち込むとファイル作成される。bundle exec rubocop で使用可能。カレントディレクトリ以降検査。-a で自動修正。
12. mysql.server start して DB サーバー立ち上げてから rails 　 db:create でデータベース作成。これでとりあえず rails s で立ち上げ確認
13. npx create-react-app frontend で react の雛形作成
14. frontend ディレクトリで npm install axios で axios のインストール
15. tailwind の追加。npm install -D tailwindcss postcss autoprefixer
16. npx tailwindcss init を打ち込む。
17. tailwind.config.js ファイルに下記を書き込む。

```
module.exports = {
content: [
"./src/**/*.{js,jsx,ts,tsx}",
],
theme: {
extend: {},
},
plugins: [],
}
```

18. index.css ファイルに下記書き込む

```
@import "tailwindcss/base";
@import "tailwindcss/components";
@import "tailwindcss/utilities";
```