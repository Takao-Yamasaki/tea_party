require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

CarrierWave.configure do |config|
  if Rails.env.production?
    # 本番環境
    config.storage = :fog
    config.fog_provider = 'fog/aws'
    config.fog_directory = 'tearip-backet'
    config.asset_host = 'https://s3-ap-northeast-1.amazonaws.com/tearip-backet'
    config.fog_public = true
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV['AWS_ACCESS_KEY_ID'],
      aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
      region: 'ap-northeast-1'
    }
  else
    # 開発環境
    config.storage = :file
    # test時に処理をスキップ
    # config.enabled_processing = false if Rails.env.test?
  end
end
