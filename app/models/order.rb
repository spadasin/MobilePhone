class Order < ActiveRecord::Base
	validates :customer_id, :presence => true
  	validates :phone_id, :presence => true
  	validates :quantity, :presence => true
  	belongs_to :phone
  	belongs_to :customer

end
