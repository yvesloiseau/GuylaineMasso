require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module GuylaineMasso
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    #I18n code 2018-02-25:
    I18n.available_locales = [:en, :fr, :es]
    I18n.default_locale = :fr
    # end of I18n code

  end
end
