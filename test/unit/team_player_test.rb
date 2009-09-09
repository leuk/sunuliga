require 'test_helper'

class TeamPlayerTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert TeamPlayer.new.valid?
  end
end
