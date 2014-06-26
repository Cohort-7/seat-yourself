class SessionsController < ApplicationController
  def new
  end

  def create
  	@user = User.find(params[:id])
  	if user && User.authenticate(params[:password])
  		session[:user_id] = user.id
  		redirect_to root_path, :notice => "Logged In"
  	else
  		flash.now[:alert] = "Invalid Email or Password!"
  		render "new"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_path, :notice => "Logged Out!"
  end
end
