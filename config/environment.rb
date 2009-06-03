RAILS_GEM_VERSION = '2.3.2' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|
  

  config.gem 'fiveruns-dash-rails',
              :lib => 'fiveruns_dash_rails',
              :source => 'http://gems.github.com'
  

  config.gem "thoughtbot-factory_girl", :lib => "factory_girl", :source => "http://gems.github.com"
  config.time_zone = 'UTC'  
  config.action_controller.session = {
    :session_key => '_luxuryresortmanagement_session',
    :secret      => '3dfc89b2f5bffadfbeb0ce74df607e4ecfb14a4b1f3f4e285893e1eb8aff6c7574b4953231cb18c54e8a4f190e35747e6a5e9de061a5a7e49e5255cf39dfa0bc'
  }

end

# EMAIL ACCOUNT CONFIG 

ActionMailer::Base.smtp_settings = {
  :address => "smtp.gmail.com",
  :port => 587,
  :domain => "luxuryresortmanagement.com  ",
  :authentication => :plain,
  :user_name => "contracts@luxuryresortmanagement.com",
  :password => "letmein"
}

# EXCEPTIONS NOTIFICATIONS CONFIGURATIONS
ExceptionNotifier.exception_recipients = %w(ivan@bakedweb.net)
ExceptionNotifier.sender_address = %("LRM Application Error" <apps_errors@bakedweb.net>)    
ExceptionNotifier.email_prefix = "[APP] "  


# FORMATING DATES 
ActiveSupport::CoreExtensions::Date::Conversions::DATE_FORMATS.merge!(
  :default => '%m/%d/%Y',
  :date_time12  => "%m/%d/%Y %I:%M%p",
  :date_time24  => "%m/%d/%Y %H:%M"
)


require "will_paginate" 
