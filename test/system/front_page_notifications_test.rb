require "application_system_test_case"

class FrontPageNotificationsTest < ApplicationSystemTestCase
  setup do
    @front_page_notification = front_page_notifications(:one)
  end

  test "visiting the index" do
    visit front_page_notifications_url
    assert_selector "h1", text: "Front Page Notifications"
  end

  test "creating a Front page notification" do
    visit front_page_notifications_url
    click_on "New Front Page Notification"

    fill_in "Color", with: @front_page_notification.color
    fill_in "End at", with: @front_page_notification.end_at
    fill_in "Message", with: @front_page_notification.message
    fill_in "Start at", with: @front_page_notification.start_at
    click_on "Create Front page notification"

    assert_text "Front page notification was successfully created"
    click_on "Back"
  end

  test "updating a Front page notification" do
    visit front_page_notifications_url
    click_on "Edit", match: :first

    fill_in "Color", with: @front_page_notification.color
    fill_in "End at", with: @front_page_notification.end_at
    fill_in "Message", with: @front_page_notification.message
    fill_in "Start at", with: @front_page_notification.start_at
    click_on "Update Front page notification"

    assert_text "Front page notification was successfully updated"
    click_on "Back"
  end

  test "destroying a Front page notification" do
    visit front_page_notifications_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Front page notification was successfully destroyed"
  end
end
