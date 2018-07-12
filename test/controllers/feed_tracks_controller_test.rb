require 'test_helper'

class FeedTracksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @feed_track = feed_tracks(:one)
  end

  test "should get index" do
    get feed_tracks_url, as: :json
    assert_response :success
  end

  test "should create feed_track" do
    assert_difference('FeedTrack.count') do
      post feed_tracks_url, params: { feed_track: { feed_id: @feed_track.feed_id, track_id: @feed_track.track_id } }, as: :json
    end

    assert_response 201
  end

  test "should show feed_track" do
    get feed_track_url(@feed_track), as: :json
    assert_response :success
  end

  test "should update feed_track" do
    patch feed_track_url(@feed_track), params: { feed_track: { feed_id: @feed_track.feed_id, track_id: @feed_track.track_id } }, as: :json
    assert_response 200
  end

  test "should destroy feed_track" do
    assert_difference('FeedTrack.count', -1) do
      delete feed_track_url(@feed_track), as: :json
    end

    assert_response 204
  end
end
