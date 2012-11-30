require 'spec_helper'

describe Phone do
  	before(:each) do
    	@attr = { :brand => "Blackberry",
              :name => "Bold",
              :description => "9340",
              :price => "199.00",
              :quantityInStock => "2"}
  	end
  	describe "Chack the presence of brand, name, price, quantityInStock" do
      	it {should validate_presence_of(:brand)}
      	it {should validate_presence_of(:name)}
      	it {should validate_presence_of(:price)}
      	it {should validate_presence_of(:quantityInStock)}
    end

    describe "Association validation" do
        it "shoud have the correct associations: have many orders" do
          	should have_many(:orders)
        end
    end
end
