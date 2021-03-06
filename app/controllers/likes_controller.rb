class LikesController < ApplicationController
  
  def index
    @likes = current_user.likes
  end

  def create
    @experience = Experience.find(params[:experience_id])
    current_user.likes.create!(experience_id: @experience.id)
  end

  def destroy
    @experience = Experience.find(params[:experience_id])
    current_user.likes.find_by(experience_id: @experience.id).destroy!
  end
end