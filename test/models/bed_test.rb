require 'test_helper'

class BedTest < ActiveSupport::TestCase


  test "it exists" do
    assert Bed.new
  end

  test "it validates the presence of garden id" do
    bed = FactoryGirl.build(:bed, garden_id: nil)
    assert bed.invalid?
    bed.update_attributes(garden_id: 1)
    assert bed.valid?
  end

  test "it validates the presence of name" do
    bed = FactoryGirl.build(:bed, name: nil)
    assert bed.invalid?
    bed.update_attributes(name: "Tomatoes")
    assert bed.valid?
  end

  test "it validates the presence of depth" do
    bed = FactoryGirl.build(:bed, depth: nil)
    assert bed.invalid?
    bed.update_attributes(depth: 10)
    assert bed.valid?
  end

  test "it validates the presence of width" do
    bed = FactoryGirl.build(:bed, width: nil)
    assert bed.invalid?
    bed.update_attributes(width: 10)
    assert bed.valid?
  end

end
