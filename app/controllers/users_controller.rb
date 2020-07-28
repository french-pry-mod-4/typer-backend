class UsersController < ApplicationController

  # def index
  #   users = User.all

  #   render json: users
  # end

  # def create
  #   user = User.new(user_params)
  # end

  def show
    # user = User.find(params)
    user = User.first # hardcoding in first user
    render json: user

    
  end


end
