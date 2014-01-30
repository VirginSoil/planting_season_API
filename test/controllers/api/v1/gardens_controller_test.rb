require 'test_helper'

class Api::V1::GardensControllerTest < ActionController::TestCase
  test "should get index" do
    garden = FactoryGirl.create(:garden)
    get :index
    assert_response :success
    result = JSON.parse(response.body)
    assert_equal garden.id, result.first["id"]
  end

  test "should show a garden" do
    garden = FactoryGirl.create(:garden)
    get :show, id: garden.id
    assert_response :success
    result = JSON.parse(response.body)
    assert_equal garden.id, result["id"]
  end

  test "should create a garden" do
    before = Garden.count
    post :create, garden: {user_id: 1, zone: "5b"}
    after = Garden.count
    assert_equal after, before + 1

    assert_response :success
    result = JSON.parse(response.body)
    assert_equal "5b", result["zone"]
  end

  test "should update a garden" do
    garden = FactoryGirl.create(:garden)
    put :update, id: garden.id, garden: {zone: "2a"}
    assert_response :success
    result = JSON.parse(response.body)
    assert_equal "2a", result["zone"]
  end

  test "should delete a garden" do
    garden = FactoryGirl.create(:garden)
    before = Garden.count
    delete :destroy, id: garden.id
    after = Garden.count
    assert_equal after, before - 1
    assert_response :success
  end
end
