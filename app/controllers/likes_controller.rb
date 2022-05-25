class LikesController < ApplicationController
  def create
    flog = WrritenFlog.find(params[:flog_id])
    like = current_user.likes.new(user_id: current_user.id, wrriten_flog_id: params[:flog_id])
    like.save
  end

  def destroy
    flog = WrritenFlog.find(params[:flog_id])
    like = current_user.likes.find_by(user_id: current_user.id, wrriten_flog_id: params[:flog_id])
    like.destroy
    redirect_to flog_path(flog.movie_id)
  end
end
