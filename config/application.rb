require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Teaparty
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    # デフォルトのロケールを日本に設定
    config.i18n.default_locale = :ja
    # タイムゾーンを日本時間に設定
    config.time_zone = 'Asia/Tokyo'
  end
end
