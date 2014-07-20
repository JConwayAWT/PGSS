require 'test_helper'

class AlumsControllerTest < ActionController::TestCase
  setup do
    @alum = alums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alum" do
    assert_difference('Alum.count') do
      post :create, alum: { city: @alum.city, current_last_name: @alum.current_last_name, email: @alum.email, first_name: @alum.first_name, high_school: @alum.high_school, iu: @alum.iu, last_name: @alum.last_name, pgss_year: @alum.pgss_year }
    end

    assert_redirected_to alum_path(assigns(:alum))
  end

  test "should show alum" do
    get :show, id: @alum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alum
    assert_response :success
  end

  test "should update alum" do
    patch :update, id: @alum, alum: { city: @alum.city, current_last_name: @alum.current_last_name, email: @alum.email, first_name: @alum.first_name, high_school: @alum.high_school, iu: @alum.iu, last_name: @alum.last_name, pgss_year: @alum.pgss_year }
    assert_redirected_to alum_path(assigns(:alum))
  end

  test "should destroy alum" do
    assert_difference('Alum.count', -1) do
      delete :destroy, id: @alum
    end

    assert_redirected_to alums_path
  end
end
