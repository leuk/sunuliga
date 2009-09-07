require 'test_helper'

class PlayersTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Players.new.valid?
  end
end
