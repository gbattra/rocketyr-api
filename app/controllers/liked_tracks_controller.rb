class LikedTracksController < ApplicationController
  before_action :set_liked_track, only: [:show, :update, :destroy]

  # GET /liked_tracks
  def index
    @liked_tracks = LikedTrack.all

    render json: @liked_tracks
  end

  # GET /liked_tracks/1
  def show
    render json: @liked_track
  end

  # POST /liked_tracks
  def create
    @liked_track = LikedTrack.new(liked_track_params)

    if @liked_track.save
      render json: @liked_track, status: :created, location: @liked_track
    else
      render json: @liked_track.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /liked_tracks/1
  def update
    if @liked_track.update(liked_track_params)
      render json: @liked_track
    else
      render json: @liked_track.errors, status: :unprocessable_entity
    end
  end

  # DELETE /liked_tracks/1
  def destroy
    @liked_track.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_liked_track
      @liked_track = LikedTrack.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def liked_track_params
      params.require(:liked_track).permit(:feed_id, :track_id)
    end
end
