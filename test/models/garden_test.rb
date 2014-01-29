require 'test_helper'

class GardenTest < ActiveSupport::TestCase
  test "it exists" do
    assert Garden.new
  end

  test "it validates presence of user id" do
    garden = Garden.new
    assert garden.invalid?
  end
end

