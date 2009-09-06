require 'test_helper'

class TeamcategoryTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Teamcategory.new.valid?
  end
end
