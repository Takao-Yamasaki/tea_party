class ExperiencesController < ApplicationController
  before_action :authenticate_user!, except: :index
  
  PER_PAGE = 10
  def index
    search_option = {
     start_after: params[:start_after]
    }
    @q = Experience.ransack(params[:q], search_option)
    @experiences = @q.result.page(params[:page]).page(params[:page]).per(PER_PAGE)
    # @liked_experience_ids = current_user.likes.pluck(:experience_id)
  end

  def show
    @experience = Experience.find(params[:id])
    @reviews = @experience.reviews
    @review = Review.new
  end

  def new
    @experience = Experience.new
  end

  def create
    experience = Experience.new(experience_params)
    experience.user_id = current_user.id
    experience.save!
    redirect_to action: :index
  end

  def edit
    @experience = Experience.find(params[:id])
  end

  def update
    experience = Experience.find(params[:id])
    experience.update(experience_params)
    redirect_to action: :index
  end

  def destroy
    experience = Experience.find(params[:id])
    experience.destroy
    redirect_to action: :index
  end

  private
  def experience_params
    params.require(:experience).permit(:title, :fee, :prefecture, :region, :address, :latitude, :longitude, :content, :start_datetime, :finish_datetime, :language, :image)
  end
end
