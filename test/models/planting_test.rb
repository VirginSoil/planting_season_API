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

  test "it validates the presence of a x_coord" do
    planting = FactoryGirl.build(:planting, x_coord: nil)
    assert planting.invalid?, "planting is valid without a x_coord"
    planting.x_coord = 1
    assert planting.valid?
  end

  test "it validates the presence of a y_coord" do
    planting = FactoryGirl.build(:planting, y_coord: nil)
    assert planting.invalid?, "planting is valid without a y_coord"
    planting.y_coord = 1
    assert planting.valid?
  end

end
