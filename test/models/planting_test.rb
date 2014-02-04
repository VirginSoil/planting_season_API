require 'test_helper'

class PlantingTest < ActiveSupport::TestCase

  test "it validates the presence of a bed_id" do
    planting = FactoryGirl.build(:planting, bed_id: nil)
    assert planting.invalid?
    planting.update_attributes(bed_id: 1)
    assert planting.valid?
  end

  test "it validates the presence of a plant_id" do
    planting = FactoryGirl.build(:planting, plant_id: nil)
    assert planting.invalid?
    planting.update_attributes(plant_id: 1)
    assert planting.valid?
  end

  test "it validates the presence of a planting_date" do
    planting = FactoryGirl.build(:planting, planting_date: nil)
    assert planting.invalid?
    planting.update_attributes(planting_date: Time.now)
    assert planting.valid?
  end

  test "it validates the presence of an x coordinate" do
    planting = FactoryGirl.build(:planting, x: nil)
    assert planting.invalid?, "planting is valid without an x"
    planting.x = "1"
    assert planting.valid?
  end

  test "it validates the presence of a y coordinate" do
    planting = FactoryGirl.build(:planting, y: nil)
    assert planting.invalid?, "planting is valid without an y"
    planting.y = "1"
    assert planting.valid?
  end

end
