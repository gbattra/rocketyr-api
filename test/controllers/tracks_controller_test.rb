require 'test_helper'

class TracksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @track = tracks(:one)
  end

  test "should get index" do
    get tracks_url, as: :json
    assert_response :success
  end

  test "should create track" do
    assert_difference('Track.count') do
      post tracks_url, params: { track: { author_profile_id: @track.author_profile_id, runtime: @track.runtime, share_count: @track.share_count, title: @track.title, track_art_url: @track.track_art_url, track_rank_id: @track.track_rank_id } }, as: :json
    end

    assert_response 201
  end

  test "should show track" do
    get track_url(@track), as: :json
    assert_response :success
  end

  test "should update track" do
    patch track_url(@track), params: { track: { author_profile_id: @track.author_profile_id, runtime: @track.runtime, share_count: @track.share_count, title: @track.title, track_art_url: @track.track_art_url, track_rank_id: @track.track_rank_id } }, as: :json
    assert_response 200
  end

  test "should destroy track" do
    assert_difference('Track.count', -1) do
      delete track_url(@track), as: :json
    end

    assert_response 204
  end
end
