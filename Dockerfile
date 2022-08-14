FROM ruby:3.1.1

ENV RAILS_ENV=production

# yarnパッケージ管理ツールをインストール
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

# 必要なライブラリをインストール(nodejsとyarnはwebpackerをインストールする際に必要)
RUN apt-get update -qq && apt-get install -y nodejs build-essential libpq-dev postgresql-client yarn

WORKDIR /tea_party
COPY . /tea_party
RUN bundle config --local set path 'vendor/bundle' \
  && bundle install

RUN yarn install
RUN bundle exec rails webpacker:install

COPY start.sh /start.sh
RUN chmod 744 /start.sh
CMD  ["sh", "/start.sh"]
