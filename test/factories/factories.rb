FactoryGirl.define do
  factory :bed do
    name "Tomato bed"
    garden_id 1
    width 10
    depth 10
  end

  factory :planting do
    bed_id 1
    plant_id 1
    planting_date Time.now
    estimated_harvest_date Time.now + 5
    harvested false
  end

end
