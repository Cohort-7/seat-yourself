class CustomersController < ApplicationController

  def new
  	@customer = Customer.new
  end

  def create
  	@customer = Customer.new(customer_params)
  	if @customer.save
  		redirect_to customer_path, :notice => "Signed Up"
  	else
  		render :new
  	end
  end

  def edit
  	@customer = Customer.find(params[:id])
  end

  def update
  	@customer = Customer.find(params[:id])
  	@customer.update_attributes(customer_params)
  	redirect_to customer_path, :notice => "Profile Updated"
  end

  def show 
  	@customer = Customer.find(params[:id])
    if current_customer
  end



  private

  def customer_params
  	params.require(:customer).permit(:name, :email, :password, :password_confirmation)
  end

end
