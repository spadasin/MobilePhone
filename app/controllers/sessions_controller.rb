class SessionsController < ApplicationController
  def new
  @title = "Sign in"
  end
  
  def create
	customer = Customer.authenticate(params[:email], params[:password])
	if customer.nil?
		flash.now[:error] = "Invalid email or password"
		@title = "Sign in"
		render 'new'
		
	else
		sign_in(customer)  #check the customer id
		redirect_to root_url, :notice => "logged in!"
	end  
  end
  
  def destroy
	sign_out
	redirect_to root_path
  end
  
end
