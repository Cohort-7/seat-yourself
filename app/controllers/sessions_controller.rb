class SessionsController < ApplicationController
  def new
  end

  def create
  	@customer = Customer.find_by_email(params[:email])
  	if customer && Customer.authenticate(params[:password])
  		session[:customer_id] = customer.id
  		redirect_to root_path, :notice => "Logged In"
  	else
  		flash.now[:alert] = "Invalid Email or Password!"
  		render "new"
  	end
  end

  def destroy
  	session[:customer_id] = nil
  	redirect_to root_path, :notice => "Logged Out!"
  end
end

