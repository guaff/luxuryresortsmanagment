RAILS_GEM_VERSION = '2.1.0' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')



Rails::Initializer.run do |config|

  config.gem "thoughtbot-factory_girl", :lib => "factory_girl", :source => "http://gems.github.com"
  config.time_zone = 'UTC'  
  config.action_controller.session = {
    :session_key => '_luxuryresortmanagement_session',
    :secret      => '3dfc89b2f5bffadfbeb0ce74df607e4ecfb14a4b1f3f4e285893e1eb8aff6c7574b4953231cb18c54e8a4f190e35747e6a5e9de061a5a7e49e5255cf39dfa0bc'
  }

end
require "will_paginate" 
ExceptionNotifier.exception_recipients = %w(ivan@bakedweb.net)

ExceptionNotifier.sender_address = %("LRM Application Error" <apps_errors@bakedweb.net>)    
ExceptionNotifier.email_prefix = "[APP] "  