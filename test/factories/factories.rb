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

  factory :garden do
    user_id 1
    zone "5a"
  end

  factory :plant do
    name "Basil"
    depth 4
    days_to_harvest "49"
    age_of_transplant "3"
    warm_season true
    spacing "5-7"
    germination_temperature "80"
    days_to_germination "5"
  end
end
