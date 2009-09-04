require 'test_helper'

class ClubTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Club.new.valid?
  end
end
