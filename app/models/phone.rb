class Phone < ActiveRecord::Base
	mount_uploader :photo, PhotoUploader

	validates :brand, :presence => true
  	validates :name, :presence => true
  	validates :price, :presence => true
  	validates :quantityInStock, :presence => true
  	validates_numericality_of :quantityInStock, :greater_than_or_equal_to => 0, :only_integer => true
  	validates_numericality_of :price, :greater_than => 0.0
    scope :exsitedPhones, :conditions => ['id = ?', 'true']

  	has_many :orders
  	validates_numericality_of :quantityInStock, :greater_than_or_equal_to => 0, :only_integer => true
  	validates_numericality_of :price, :greater_than => 0.0

end
