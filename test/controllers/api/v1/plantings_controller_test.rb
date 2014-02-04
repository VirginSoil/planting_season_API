require 'test_helper'

class Api::V1::PlantingsControllerTest < ActionController::TestCase
  test "should get index" do
    planting = FactoryGirl.create(:planting)
    get :index
    assert_response :success
    result = JSON.parse(response.body)
    assert_equal planting.id, result.first["id"]
  end

  test "should show a planting" do
    planting = FactoryGirl.create(:planting)
    get :show, id: planting.id
    assert_response :success
    result = JSON.parse(response.body)
    assert_equal planting.id, result["id"]
  end

  test "should create a planting" do
    before = Planting.count
    post :create, planting: {bed_id: 1, plant_id: 1, planting_date: Time.now, estimated_harvest_date: Time.now + 5, harvested: false, row: "a", column: "1"}
    after = Planting.count
    assert_equal before + 1, after

    assert_response :success
    result = JSON.parse(response.body)
    assert_equal 1, result["bed_id"]
  end

  test "should update a planting" do
    planting = FactoryGirl.create(:planting)
    put :update, id: planting.id, planting: {plant_id: 2}
    assert_response :success
    result = JSON.parse(response.body)
    assert_equal 2, result["plant_id"]
  end

  test "should delete a planting" do
    planting = FactoryGirl.create(:planting)
    before = Planting.count
    delete :destroy, id: planting.id
    after = Planting.count
    assert_equal after, before - 1
    assert_response :success
  end

end
