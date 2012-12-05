class Order < ActiveRecord::Base
	validates :customer_id, :presence => true
  	validates :phone_id, :presence => true
  	validates :quantity, :presence => true
  	belongs_to :phone
  	belongs_to :customer
  	validates_numericality_of :customer_id, :greater_than => 0, :only_integer => true
    validates_numericality_of :phone_id, :greater_than => 0, :only_integer => true
    validates_numericality_of :quantity, :greater_than => 0, :only_integer => true

  def phoneOrder(currentPhone)
    self.phone_id = currentPhone
  end 

end
