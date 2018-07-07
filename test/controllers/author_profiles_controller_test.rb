require 'test_helper'

class AuthorProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @author_profile = author_profiles(:one)
  end

  test "should get index" do
    get author_profiles_url, as: :json
    assert_response :success
  end

  test "should create author_profile" do
    assert_difference('AuthorProfile.count') do
      post author_profiles_url, params: { author_profile: { bio: @author_profile.bio, user_id: @author_profile.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show author_profile" do
    get author_profile_url(@author_profile), as: :json
    assert_response :success
  end

  test "should update author_profile" do
    patch author_profile_url(@author_profile), params: { author_profile: { bio: @author_profile.bio, user_id: @author_profile.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy author_profile" do
    assert_difference('AuthorProfile.count', -1) do
      delete author_profile_url(@author_profile), as: :json
    end

    assert_response 204
  end
end
