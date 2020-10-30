class UsersController < ApplicationController
  before_action :authorized

  def create
    @user = User.create(user_params)
    if @user.valid?
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token}
    else
      render json: {error: "Invalid username or password"}
    end
  end

  def login
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      token = encode_token({user_id: @user.id})
      render json: {user: @user, token: token}
    else
      render json: {error: "Invalid username or password"}
    end
  end

  def show
    render json: User.find_by_id(params[:id])
  end

  def index
    render json: User.all
  end

  def destroy
    user = User.find_by_id(params[:id])
    render json: user&.destroy
  end

  private

  def user_params
    params.permit(:username, :password, :age)
  end
end
