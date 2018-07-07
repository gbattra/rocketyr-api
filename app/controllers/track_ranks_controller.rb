class TrackRanksController < ApplicationController
  before_action :set_track_rank, only: [:show, :update, :destroy]

  # GET /track_ranks
  def index
    @track_ranks = TrackRank.all

    render json: @track_ranks
  end

  # GET /track_ranks/1
  def show
    render json: @track_rank
  end

  # POST /track_ranks
  def create
    @track_rank = TrackRank.new(track_rank_params)

    if @track_rank.save
      render json: @track_rank, status: :created, location: @track_rank
    else
      render json: @track_rank.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /track_ranks/1
  def update
    if @track_rank.update(track_rank_params)
      render json: @track_rank
    else
      render json: @track_rank.errors, status: :unprocessable_entity
    end
  end

  # DELETE /track_ranks/1
  def destroy
    @track_rank.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_track_rank
      @track_rank = TrackRank.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def track_rank_params
      params.require(:track_rank).permit(:label, :icon, :threshold)
    end
end
