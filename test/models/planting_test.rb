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

  test "it validates the presence of a row" do
    planting = FactoryGirl.build(:planting, row: nil)
    assert planting.invalid?, "planting is valid without a row"
    planting.row = "1"
    assert planting.valid?
  end

  test "it validates the presence of a column" do
    planting = FactoryGirl.build(:planting, column: nil)
    assert planting.invalid?, "planting is valid without a column"
    planting.column = "1"
    assert planting.valid?
  end

end
