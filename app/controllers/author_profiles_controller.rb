class AuthorProfilesController < ApplicationController
  before_action :set_author_profile, only: [:show, :update, :destroy]

  # GET /author_profiles
  def index
    @author_profiles = AuthorProfile.all

    render json: @author_profiles
  end

  # GET /author_profiles/1
  def show
    render json: @author_profile
  end

  # POST /author_profiles
  def create
    @author_profile = AuthorProfile.new(author_profile_params)

    if @author_profile.save
      render json: @author_profile, status: :created, location: @author_profile
    else
      render json: @author_profile.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /author_profiles/1
  def update
    if @author_profile.update(author_profile_params)
      render json: @author_profile
    else
      render json: @author_profile.errors, status: :unprocessable_entity
    end
  end

  # DELETE /author_profiles/1
  def destroy
    @author_profile.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_author_profile
      @author_profile = AuthorProfile.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def author_profile_params
      params.require(:author_profile).permit(:user_id, :bio)
    end
end
