class UsersController < ApplicationController
  attr_accessor :name, :email
  def show
    @user = current_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user # ask why this is not working!!!!!!!
    else
      render 'new'
    end

  end


private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :is_mentor, :phone, :password, :password_confirmation)
  end

end
