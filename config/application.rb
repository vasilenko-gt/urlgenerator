require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Urlgenerator
  class Application < Rails::Application
    config.load_defaults 5.2

    config.action_mailer.raise_delivery_errors = false
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
        address:              'mail.smtp2go.com',
        port:                  2525, # 2525, 587 and 25 can also be used.
        domain:               'gmail.com',
        user_name:            'sharmvilla.mailer@gmail.com',
        password:             'sharmvilla2016',
        authentication:       'plain',
        enable_starttls_auto: true
    }

  end
end
