require 'test_helper'

class FrontPageNotificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @front_page_notification = front_page_notifications(:one)
  end

  test "should get index" do
    get front_page_notifications_url
    assert_response :success
  end

  test "should get new" do
    get new_front_page_notification_url
    assert_response :success
  end

  test "should create front_page_notification" do
    assert_difference('FrontPageNotification.count') do
      post front_page_notifications_url, params: { front_page_notification: { color: @front_page_notification.color, end_at: @front_page_notification.end_at, message: @front_page_notification.message, start_at: @front_page_notification.start_at } }
    end

    assert_redirected_to front_page_notification_url(FrontPageNotification.last)
  end

  test "should show front_page_notification" do
    get front_page_notification_url(@front_page_notification)
    assert_response :success
  end

  test "should get edit" do
    get edit_front_page_notification_url(@front_page_notification)
    assert_response :success
  end

  test "should update front_page_notification" do
    patch front_page_notification_url(@front_page_notification), params: { front_page_notification: { color: @front_page_notification.color, end_at: @front_page_notification.end_at, message: @front_page_notification.message, start_at: @front_page_notification.start_at } }
    assert_redirected_to front_page_notification_url(@front_page_notification)
  end

  test "should destroy front_page_notification" do
    assert_difference('FrontPageNotification.count', -1) do
      delete front_page_notification_url(@front_page_notification)
    end

    assert_redirected_to front_page_notifications_url
  end
end
