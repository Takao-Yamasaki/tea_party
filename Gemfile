source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.1'

gem 'rails', '6.0.3.4'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
# gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.2', require: false
#サンプルデータの生成
gem 'faker'
#ページネーション
gem 'kaminari'
# 検索機能
gem 'ransack'
#ログイン機能
gem 'devise'
#多言語対応
gem 'rails-i18n', '~> 6.0'
gem 'devise-i18n'
# 画像投稿機能
gem 'carrierwave', '~> 2.0'

# S3を使用するための設定
gem 'fog-aws'

# 画像ファイルの加工
gem 'mini_magick'

# gem 'jquery-rails'

gem 'geocoder'

gem "font-awesome-rails"

# 本番環境へのデータ移行
gem 'seed_dump'

# unknown alias: defaultのエラー解決のため
gem 'psych', '~> 3.1'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console'
  gem 'listen'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen'
  gem "capistrano", require: false
  gem "capistrano-rails", require: false
  gem 'capistrano-rbenv'
  gem 'capistrano-rbenv-vars'
  gem 'capistrano3-puma'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data'
