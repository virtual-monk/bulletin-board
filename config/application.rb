require File.expand_path('../boot', __FILE__)
config.serve_static_assets = true

require "rails"
require 'rails/all'
require 'carrierwave'
require 'carrierwave/orm/activerecord'
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BulletienBoard
  class Application < Rails::Application
    config.serve_static_assets = true
    config.autoload_paths += %W(#{config.root}/lib)
    config.active_record.raise_in_transactional_callbacks = true
  end
end
