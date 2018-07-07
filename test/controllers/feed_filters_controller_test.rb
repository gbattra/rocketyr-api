require 'test_helper'

class FeedFiltersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @feed_filter = feed_filters(:one)
  end

  test "should get index" do
    get feed_filters_url, as: :json
    assert_response :success
  end

  test "should create feed_filter" do
    assert_difference('FeedFilter.count') do
      post feed_filters_url, params: { feed_filter: { key: @feed_filter.key, label: @feed_filter.label, options: @feed_filter.options, value: @feed_filter.value } }, as: :json
    end

    assert_response 201
  end

  test "should show feed_filter" do
    get feed_filter_url(@feed_filter), as: :json
    assert_response :success
  end

  test "should update feed_filter" do
    patch feed_filter_url(@feed_filter), params: { feed_filter: { key: @feed_filter.key, label: @feed_filter.label, options: @feed_filter.options, value: @feed_filter.value } }, as: :json
    assert_response 200
  end

  test "should destroy feed_filter" do
    assert_difference('FeedFilter.count', -1) do
      delete feed_filter_url(@feed_filter), as: :json
    end

    assert_response 204
  end
end
