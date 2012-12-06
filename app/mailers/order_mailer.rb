class OrderMailer < ActionMailer::Base
  default from: "aliya.hashim11@gmail.com"

  	def new_order_msg(customer)
  		@customer = customer
  		mail(:to => @customer.email, :subject => "New Order")
	end
end
