require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url, as: :json
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { author_profile_id: @user.author_profile_id, birthday: @user.birthday, first_name: @user.first_name, last_name: @user.last_name, location_id: @user.location_id, profile_image_url: @user.profile_image_url } }, as: :json
    end

    assert_response 201
  end

  test "should show user" do
    get user_url(@user), as: :json
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { author_profile_id: @user.author_profile_id, birthday: @user.birthday, first_name: @user.first_name, last_name: @user.last_name, location_id: @user.location_id, profile_image_url: @user.profile_image_url } }, as: :json
    assert_response 200
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user), as: :json
    end

    assert_response 204
  end
end
