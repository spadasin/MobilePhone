require 'spec_helper'

describe "phones/index" do
  before(:each) do
    assign(:phones, [
      stub_model(Phone,
        :brand => "Brand",
        :name => "Name",
        :description => "Description",
        :price => "9.99",
        :quantityInStock => 1
      ),
      stub_model(Phone,
        :brand => "Brand",
        :name => "Name",
        :description => "Description",
        :price => "9.99",
        :quantityInStock => 1
      )
    ])
  end

  it "renders a list of phones" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Brand".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
