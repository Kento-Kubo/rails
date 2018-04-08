class FavoritesController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update]
  before_action :correct_user,   only: [:edit, :update]


  def create
    @favorite = Favorite.new(user_id: current_user.id, teacher_id: params[:id])
    @favorite.save
    if @favorite
    redirect_to("/main/index")
    end
  end
  
  def update
  
  end

def destroy
  @favorite = Favorite.find_by(user_id: current_user.id, teacher_id: params[:id])
  @favorite.destroy
    redirect_to("/main/index")
  end
end

