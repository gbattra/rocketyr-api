require 'test_helper'

class ProfileTracksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile_track = profile_tracks(:one)
  end

  test "should get index" do
    get profile_tracks_url, as: :json
    assert_response :success
  end

  test "should create profile_track" do
    assert_difference('ProfileTrack.count') do
      post profile_tracks_url, params: { profile_track: { author_profile_id: @profile_track.author_profile_id, track_id: @profile_track.track_id } }, as: :json
    end

    assert_response 201
  end

  test "should show profile_track" do
    get profile_track_url(@profile_track), as: :json
    assert_response :success
  end

  test "should update profile_track" do
    patch profile_track_url(@profile_track), params: { profile_track: { author_profile_id: @profile_track.author_profile_id, track_id: @profile_track.track_id } }, as: :json
    assert_response 200
  end

  test "should destroy profile_track" do
    assert_difference('ProfileTrack.count', -1) do
      delete profile_track_url(@profile_track), as: :json
    end

    assert_response 204
  end
end
