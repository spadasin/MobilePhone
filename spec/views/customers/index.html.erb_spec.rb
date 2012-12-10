require 'spec_helper'

describe "customers/index" do
  before(:each) do
    assign(:customers, [
      stub_model(Customer,
        :firstName => "First Name",
        :lastName => "Last Name",
        :email => "Email",
        :phone => "Phone",
        :address => "Address"
      ),
      stub_model(Customer,
        :firstName => "First Name",
        :lastName => "Last Name",
        :email => "Email",
        :phone => "Phone",
        :address => "Address"
      )
    ])
  end

  it "renders a list of customers" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
  end
end
