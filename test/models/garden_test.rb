require 'test_helper'

class GardenTest < ActiveSupport::TestCase
  test "it exists" do
    assert Garden.new
  end

  test "it is created with valid params" do
    garden = Garden.new(user_id: 1,
                        zone: "5",
                        email_notifications: true,
                        text_notifications: true,
                        phone_notifications: false)
    assert garden.save
  end
end

