require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AdminPaas
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.	
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.to_prepare do
	#  Devise::SessionsController.layout "empty"
	#  Devise::RegistrationsController.layout proc{ |controller| user_signed_in? ? "application" : "empty" }
	#  Devise::ConfirmationsController.layout "empty"
	#  Devise::UnlocksController.layout "empty"            
	   Devise::PasswordsController.layout proc{ |controller| account_signed_in? ? "application" : "empty" }        
	   Devise::SessionsController.layout "empty"
	   Devise::RegistrationsController.layout "empty"
	end

	config.generators do |g|
	   g.orm             :active_record
       g.template_engine :erb
       g.test_framework  :test_unit, fixture: true
    end
  end
end
