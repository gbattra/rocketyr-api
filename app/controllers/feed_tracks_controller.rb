class FeedTracksController < ApplicationController
  before_action :set_feed_track, only: [:show, :update, :destroy]

  # GET /feed_tracks
  def index
    @feed_tracks = FeedTrack.all

    render json: @feed_tracks
  end

  # GET /feed_tracks/1
  def show
    render json: @feed_track
  end

  # POST /feed_tracks
  def create
    @feed_track = FeedTrack.new(feed_track_params)

    if @feed_track.save
      render json: @feed_track, status: :created, location: @feed_track
    else
      render json: @feed_track.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /feed_tracks/1
  def update
    if @feed_track.update(feed_track_params)
      render json: @feed_track
    else
      render json: @feed_track.errors, status: :unprocessable_entity
    end
  end

  # DELETE /feed_tracks/1
  def destroy
    @feed_track.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feed_track
      @feed_track = FeedTrack.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def feed_track_params
      params.require(:feed_track).permit(:track_id, :feed_id)
    end
end
