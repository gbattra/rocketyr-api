require 'test_helper'

class LikedTracksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @liked_track = liked_tracks(:one)
  end

  test "should get index" do
    get liked_tracks_url, as: :json
    assert_response :success
  end

  test "should create liked_track" do
    assert_difference('LikedTrack.count') do
      post liked_tracks_url, params: { liked_track: { feed_id: @liked_track.feed_id, track_id: @liked_track.track_id } }, as: :json
    end

    assert_response 201
  end

  test "should show liked_track" do
    get liked_track_url(@liked_track), as: :json
    assert_response :success
  end

  test "should update liked_track" do
    patch liked_track_url(@liked_track), params: { liked_track: { feed_id: @liked_track.feed_id, track_id: @liked_track.track_id } }, as: :json
    assert_response 200
  end

  test "should destroy liked_track" do
    assert_difference('LikedTrack.count', -1) do
      delete liked_track_url(@liked_track), as: :json
    end

    assert_response 204
  end
end
