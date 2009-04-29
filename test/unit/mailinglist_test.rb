require File.dirname(__FILE__) + "/../test_helper"
require 'shoulda'

class TestMailinglist < ActiveSupport::TestCase
  should_validate_presence_of :name, :email
end
