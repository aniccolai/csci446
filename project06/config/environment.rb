# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.10' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
	
	config.gem "authlogic"
	config.gem "declarative_authorization"
	config.gem "will_paginate"
	config.gem "recaptcha", :lib => "recaptcha/rails"
	config.gem "paperclip"
	config.gem "haml"
	
  config.time_zone = 'UTC'

end

# recaptcha key configuration
ENV['RECAPTCHA_PUBLIC_KEY'] = '6LcePcISAAAAADOrDdAYXJAJH2Z2ji5PY9dZmLn9'
ENV['RECAPTCHA_PRIVATE_KEY'] = '6LcePcISAAAAANwvNuLAdXGtrIOcxrQbuF5BCG9O'