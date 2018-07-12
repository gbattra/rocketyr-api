class ProfileTracksController < ApplicationController
  before_action :set_profile_track, only: [:show, :update, :destroy]

  # GET /profile_tracks
  def index
    @profile_tracks = ProfileTrack.all

    render json: @profile_tracks
  end

  # GET /profile_tracks/1
  def show
    render json: @profile_track
  end

  # POST /profile_tracks
  def create
    @profile_track = ProfileTrack.new(profile_track_params)

    if @profile_track.save
      render json: @profile_track, status: :created, location: @profile_track
    else
      render json: @profile_track.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /profile_tracks/1
  def update
    if @profile_track.update(profile_track_params)
      render json: @profile_track
    else
      render json: @profile_track.errors, status: :unprocessable_entity
    end
  end

  # DELETE /profile_tracks/1
  def destroy
    @profile_track.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile_track
      @profile_track = ProfileTrack.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def profile_track_params
      params.require(:profile_track).permit(:track_id, :author_profile_id)
    end
end
