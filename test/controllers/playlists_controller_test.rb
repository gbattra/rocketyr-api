require 'test_helper'

class PlaylistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @playlist = playlists(:one)
  end

  test "should get index" do
    get playlists_url, as: :json
    assert_response :success
  end

  test "should create playlist" do
    assert_difference('Playlist.count') do
      post playlists_url, params: { playlist: { author_id: @playlist.author_id, name: @playlist.name, playlist_art_url: @playlist.playlist_art_url } }, as: :json
    end

    assert_response 201
  end

  test "should show playlist" do
    get playlist_url(@playlist), as: :json
    assert_response :success
  end

  test "should update playlist" do
    patch playlist_url(@playlist), params: { playlist: { author_id: @playlist.author_id, name: @playlist.name, playlist_art_url: @playlist.playlist_art_url } }, as: :json
    assert_response 200
  end

  test "should destroy playlist" do
    assert_difference('Playlist.count', -1) do
      delete playlist_url(@playlist), as: :json
    end

    assert_response 204
  end
end
