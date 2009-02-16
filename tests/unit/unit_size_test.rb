require File.dirname(__FILE__) + "/../test_helper"
require 'shoulda'


class UnitSizeTest < ActiveSupport::TestCase

  should_belong_to :room
  should_validate_presence_of :name

end
