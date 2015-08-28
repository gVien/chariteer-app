class UsersController < ApplicationController
  def index
  end

  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:id] = @user.id
      redirect_to #somewhere
      # ie: redirect_to @user
    else
      flash[:error] = "email or password is wrong"
      render 'new'
    end
end

def show
end

def edit
end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
