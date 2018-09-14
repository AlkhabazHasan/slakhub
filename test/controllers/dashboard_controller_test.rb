require 'test_helper'

class DashboardControllerTest < ActionDispatch::IntegrationTest
  test "should get overview" do
    get dashboard_overview_url
    assert_response :success
  end

  test "should get destination" do
    get dashboard_destination_url
    assert_response :success
  end

  test "should get flight" do
    get dashboard_flight_url
    assert_response :success
  end

  test "should get traveler" do
    get dashboard_traveler_url
    assert_response :success
  end

  test "should get hotel" do
    get dashboard_hotel_url
    assert_response :success
  end

end
