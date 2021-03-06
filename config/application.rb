require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Assets should be precompiled for production (so we don't need the gems loaded then)
#TODO# Bundler.require(*Rails.groups(assets: %w(development test)))
Bundler.require(:default, Rails.env)

module Atlrug4
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Custom directories with classes and modules you want to be autoloadable.
    config.assets.enabled = true

    config.autoload_paths += %W(#{config.root}/lib)

    config.filter_parameters += [:password]

    config.assets.initialize_on_precompile = true

    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)

    I18n.config.enforce_available_locales = false
  end
end
