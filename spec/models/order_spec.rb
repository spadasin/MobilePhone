require 'spec_helper'

describe Order do
    before(:each) do
          @attr = { :customer_id => "1",
                :phone_id => "1 ",
                :quantity => "2"}
    end
    describe "Chack the presence of firts customer_id, phone_id, quantity" do
      it {should validate_presence_of(:customer_id)}
      it {should validate_presence_of(:phone_id)}
      it {should validate_presence_of(:quantity)}
    end
    describe "Association validation" do
      it "shoud have the correct associations: belongs to customers" do
        should belong_to(:customer)
      end
      it "shoud have the correct associations: belongs to phones" do
        should belong_to(:customer)
      end
    end
end
