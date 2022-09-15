#!/bin/sh
# エラーが発生するとスクリプトを終了する
set -e

# pidファイルを削除する
rm -f /tea_party/tmp/pids/server.pid && bundle exec puma -C config/puma.rb

# DockerfileのCMDで渡された`rails s -b 0.0.0.0`を実行
exec "$@"
