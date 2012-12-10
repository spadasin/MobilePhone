require 'spec_helper'

describe "phones/edit" do
  before(:each) do
    @phone = assign(:phone, stub_model(Phone,
      :brand => "MyString",
      :name => "MyString",
      :description => "MyString",
      :price => "9.99",
      :quantityInStock => 1
    ))
  end

  it "renders the edit phone form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => phones_path(@phone), :method => "post" do
      assert_select "input#phone_brand", :name => "phone[brand]"
      assert_select "input#phone_name", :name => "phone[name]"
      assert_select "input#phone_description", :name => "phone[description]"
      assert_select "input#phone_price", :name => "phone[price]"
      assert_select "input#phone_quantityInStock", :name => "phone[quantityInStock]"
    end
  end
end
