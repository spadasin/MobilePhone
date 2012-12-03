class Phone < ActiveRecord::Base
	validates :brand, :presence => true
  	validates :name, :presence => true
  	validates :price, :presence => true
  	validates :quantityInStock, :presence => true
  	has_many :orders
  	validates_numericality_of :quantityInStock, :greater_than_or_equal_to => 0, :only_integer => true
  	validates_numericality_of :price, :greater_than => 0.0

end
