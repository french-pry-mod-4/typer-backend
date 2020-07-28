class UsersController < ApplicationController

  # def index
  #   users = User.all

  #   render json: users
  # end

  def create
    user = User.create(user_params)
    render json: user
  end

  def show
    # user = User.find(params)
    user = User.first # hardcoding in first user
    render json: user

    
  end

  def user_params
    params.permit(:username, :password)
  end

end
