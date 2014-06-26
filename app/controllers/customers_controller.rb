class CustomersController < ApplicationController

  def new
  	@customer = Customer.new
  end

  def create
  	@customer = Customer.new(params[:id])
  	if @customer.save
  		redirect_to root_path, :notice => "Signed Up"
  	else
  		render :new
  	end
  end

  def edit
  	@customer = Customer.find(params[:id])
  end

  def update
  	@customer = Customer.find(params[:id])
  	@customer.update.attributes(customer_params)
  	redirect_to root_path, :notice => "Profile Updated"
  end

  def show 
  	@customer = Customer.find(params[:id])
  end

  private

  def product_params
  	params.require(:customer).permit(:name, :email, :password, :password_confirmation)
  end

end
