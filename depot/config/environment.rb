# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

Depot::Application.configure do
	ActionMailer::Base.raise_delivery_errors = true
	config.action_mailer.delivery_method = :smtp
	config.action_mailer.smtp_settings = {
		:address => "mail.mediterranean-charm.com",
		:port => '465',
		:domain => "mail.mediterranean-charm.com",
		:authentication => "plain",
		:user_name => "m.hak@mediterranean-charm.com",
		:password => "vsO8yoMcfkof",
		enable_starttls_auto: true,
		openssl_verify_mode:  'none',
		ssl:                   true,
		tls:                   true
	}
end