class UsersController < ApplicationController

  def new
    
  end

  def create
    user = User.new(
    first_name: params[:first_name],
    email: params[:email],
    password: params[:password],
    password_confirmation: params[:password_confirmation]
    )

    if user.save
      session[:user_id] = user.id
      flash[:success] = "Welcome To Save Face!"
      redirect_to '/projects'
    else
      flash[:warning] = "Please Try Again"
      redirect_to '/login'
    end
  end

  def show
    
    
  end
end

  
