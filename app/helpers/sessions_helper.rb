module SessionsHelper
 def sign_in(customer)
	cookies.permanent.signed[:remember_token] = [customer.id, customer.password_salt]
	current_customer= customer
 end
 
 
  def current_customer=(customer)
	@current_customer = customer
  end
 
  def current_customer
	@current_customer ||= customer_from_remember_token
  end
  
  def signed_in?
	!current_customer.nil?
  end
  
  def sign_out
	cookies.delete(:remember_token)
	self.current_customer = nil
  end
  
  private
  
  def customer_from_remember_token
	Customer.authenticate_with_salt(*remember_token)
  end

  def remember_token
	cookies.signed[:remember_token] || [nil, nil]
  end

  
end
