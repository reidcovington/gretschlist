class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    binding.pry
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      flash[:error] = "Unable to create user."
      redirect_to root_path
    end
  end

  def show
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
