class CustomersController < ApplicationController

  #all actions are routes to root_path for testing. Will change these later.

  def new
  	@customer = Customer.new
  end

  def create
  	@customer = Customer.new(customer_params)
  	if @customer.save
  		redirect_to customer_path(@customer.id), :notice => "Signed Up"
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
  	redirect_to root_path, :notice => "Profile Updated"
  end

  def show 
  	
    # when we do this line, we are asking for the customer corresponding to the :id
    # /customers/:id
    
    @customer = Customer.find(params[:id])

    @current_reservations = @customer.reservations.where("time > ?", Time.now)
    @past_reservations = @customer.reservations.where("time < ?", Time.now)
  end

  def destroy
    @customer = Customer.reservation.find(params[:id])
    @customer.reservation.destroy
    redirect_to customer_path, :notice => "Reservation Deleted!"
  end



  private

  def customer_params
  	params.require(:customer).permit(:name, :email, :password, :password_confirmation)
  end

end
