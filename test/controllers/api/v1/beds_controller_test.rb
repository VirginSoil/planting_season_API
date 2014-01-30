require 'test_helper'

class Api::V1::BedsControllerTest < ActionController::TestCase
  test "should get index" do
    bed = FactoryGirl.create(:bed)
    get :index
    assert_response :success
    result = JSON.parse(response.body)
    assert_equal bed.id, result.first["id"]
  end

  test "should create a bed" do
    before = Bed.count
    post :create, bed: {name: "Billy's BBQ Tomatoes", garden_id: 1, width: 30, depth: 30}
    after = Bed.count
    assert_equal after, before + 1

    assert_response :success
    result = JSON.parse(response.body)
    assert_equal "Billy's BBQ Tomatoes", result["name"]
  end

  test "should update a bed" do
    bed = FactoryGirl.create(:bed)
    put :update, id: bed.id, bed: {name: "Basil Galore"}
    assert_response :success
    result = JSON.parse(response.body)
    assert_equal "Basil Galore", result["name"]
  end

  test "should delete a bed" do
    bed = FactoryGirl.create(:bed)
    before = Bed.count
    delete :destroy, id: bed.id
    after = Bed.count
    assert_equal after, before - 1
    assert_response :success
  end
end