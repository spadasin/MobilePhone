require 'spec_helper'

describe "orders/new" do
  before(:each) do
    assign(:order, stub_model(Order,
      :customer_id => 1,
      :phone_id => 1,
      :quantity => 1
    ).as_new_record)
  end

  it "renders new order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => orders_path, :method => "post" do
      assert_select "input#order_customer_id", :name => "order[customer_id]"
      assert_select "input#order_phone_id", :name => "order[phone_id]"
      assert_select "input#order_quantity", :name => "order[quantity]"
    end
  end
end
