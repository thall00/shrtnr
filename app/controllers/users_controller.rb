class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_url, notice: "You have signed up"
    else
      puts @user.errors.keys
      render "new"
    end
  end

  private

    def user_params
      params.require(:user).permit(:email, :password)
    end
end
