class ReviewsController < ApplicationController
  def new
    @experience = Experience.find(params[:experience_id])
    @review = Review.new
  end

  def create
    review = Review.create(review_params)
    redirect_to controller: :experiences, action: :show, id: review.experience_id
  end

  private
  def review_params
    params.require(:review).permit(:content, :rating).merge(experience_id: params[:experience_id], user_id: current_user.id)
  end
end
