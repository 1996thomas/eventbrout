class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def create 
    @user = User.update
  end 

  def update  
    @user = User.update
  end

end
