class Phone < ActiveRecord::Base
	validates :brand, :presence => true
  	validates :name, :presence => true
  	validates :price, :presence => true
  	validates :quantityInStock, :presence => true
  	has_many :orders

end
