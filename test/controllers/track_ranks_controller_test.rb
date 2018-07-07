require 'test_helper'

class TrackRanksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @track_rank = track_ranks(:one)
  end

  test "should get index" do
    get track_ranks_url, as: :json
    assert_response :success
  end

  test "should create track_rank" do
    assert_difference('TrackRank.count') do
      post track_ranks_url, params: { track_rank: { icon: @track_rank.icon, label: @track_rank.label, threshold: @track_rank.threshold } }, as: :json
    end

    assert_response 201
  end

  test "should show track_rank" do
    get track_rank_url(@track_rank), as: :json
    assert_response :success
  end

  test "should update track_rank" do
    patch track_rank_url(@track_rank), params: { track_rank: { icon: @track_rank.icon, label: @track_rank.label, threshold: @track_rank.threshold } }, as: :json
    assert_response 200
  end

  test "should destroy track_rank" do
    assert_difference('TrackRank.count', -1) do
      delete track_rank_url(@track_rank), as: :json
    end

    assert_response 204
  end
end
