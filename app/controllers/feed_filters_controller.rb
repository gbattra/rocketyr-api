class FeedFiltersController < ApplicationController
  before_action :set_feed_filter, only: [:show, :update, :destroy]

  # GET /feed_filters
  def index
    @feed_filters = FeedFilter.all

    render json: @feed_filters
  end

  # GET /feed_filters/1
  def show
    render json: @feed_filter
  end

  # POST /feed_filters
  def create
    @feed_filter = FeedFilter.new(feed_filter_params)

    if @feed_filter.save
      render json: @feed_filter, status: :created, location: @feed_filter
    else
      render json: @feed_filter.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /feed_filters/1
  def update
    if @feed_filter.update(feed_filter_params)
      render json: @feed_filter
    else
      render json: @feed_filter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /feed_filters/1
  def destroy
    @feed_filter.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_feed_filter
      @feed_filter = FeedFilter.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def feed_filter_params
      params.require(:feed_filter).permit(:key, :label, :value)
    end
end
