class Order < ActiveRecord::Base
	validates :customer_id, :presence => true
  	validates :phone_id, :presence => true
  	validates :quantity, :presence => true
  	validates_numericality_of :customer_id, :greater_than => 0, :only_integer => true
    validates_numericality_of :phone_id, :greater_than => 0, :only_integer => true
    validates_numericality_of :quantity, :greater_than => 0, :only_integer => true
    scope :exsitedPhones, :conditions => ['phone_id = ?', true]
#    scope :exsitedPhones, lambda {|phone_id| where('phone_id = ?', NOT NULL)}

#  	validates_inclusion_of :phone_id, :in => %[Phone.first.id..Phone.last.id], :message => "is not an option"
#  	PHONEID = [Phone.first.id..Phone.last.id]


    belongs_to :phone
  	belongs_to :customer
  	validates_numericality_of :customer_id, :greater_than => 0, :only_integer => true
    validates_numericality_of :phone_id, :greater_than => 0, :only_integer => true
    validates_numericality_of :quantity, :greater_than => 0, :only_integer => true

  def phoneOrder(currentPhone)
    self.phone_id = currentPhone
  end 


  	
  def phoneOrder(currentPhone)
    self.phone_id = currentPhone
  end 

#  	def add_phoneID(currentPhone)
#  		self.phone_id = currentPhone
#  	end 
end
