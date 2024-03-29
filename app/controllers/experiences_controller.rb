class ExperiencesController < ApplicationController
  before_action :authenticate_user!, except: :index
  
  PER_PAGE = 10
  def index
    search_option = {
     start_after: params[:start_after]
    }
    @q = Experience.ransack(params[:q], search_option)
    @experiences = @q.result.page(params[:page]).page(params[:page]).per(PER_PAGE)
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
    @experience = Experience.new(experience_params)
    @experience.user_id = current_user.id
    if @experience.save
      redirect_to action: :index, success: "登録が完了しました"
    else
      flash.now[:danger] = "登録に失敗しました"
      render :new
    end
  end

  def edit
    @experience = Experience.find(params[:id])
  end

  def update
    experience = Experience.find(params[:id])
    experience.update(experience_params)
    redirect_to action: :show
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
