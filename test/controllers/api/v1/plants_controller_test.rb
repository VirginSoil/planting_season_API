require 'test_helper'

class Api::V1::PlantsControllerTest < ActionController::TestCase
  test "should get index" do
    plant = FactoryGirl.create(:plant)
    get :index
    assert_response :success
    result = JSON.parse(response.body)
    assert_equal plant.id, result.first["id"]
  end

  test "should show a plant" do
    plant = FactoryGirl.create(:plant)
    get :show, id: plant.id
    assert_response :success
    result = JSON.parse(response.body)
    assert_equal plant.id, result["id"]
  end

  test "should create a plant" do
    before = Plant.count
    post :create, plant: {
      :name => "Purple Basil",
      :depth => 4,
      :days_to_harvest => "49",
      :age_of_transplant => "3",
      :warm_season => true,
      :spacing => "5-7",
      :germination_temperature => "80",
      :days_to_germination => "5"}
    after = Plant.count
    assert_equal after, before + 1

    assert_response :success
    result = JSON.parse(response.body)
    assert_equal "Purple Basil", result["name"]
  end

  test "should update a plant" do
    plant = FactoryGirl.create(:plant)
    put :update, id: plant.id, plant: {name: "Holy Basil"}
    assert_response :success
    result = JSON.parse(response.body)
    assert_equal "Holy Basil", result["name"]
  end

  test "should delete a plant" do
    plant = FactoryGirl.create(:plant)
    before = Plant.count
    delete :destroy, id: plant.id
    after = Plant.count
    assert_equal after, before - 1
    assert_response :success
  end

end
