class UsersController < ApplicationController

  # def index
  #   users = User.all

  #   render json: users
  # end

  #signup
  def create
    user = User.create(user_params)
    if user.valid?
      render json: user, serializer: SignupSerializer
    else 
      render json: user.errors.full_messages
    end
  end

  # login
  # def login

  #   user = User.find_by(user_id: params[:user_id], password: params[:password])
  #   byebug
  # end

  def show
    # user = User.find(params)
    user = User.all # hardcoding in first user
    render json: user
  end

  def user_params
    params.permit(:username, :password)
  end

end
