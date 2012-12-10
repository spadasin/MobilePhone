require 'spec_helper'

describe "phones/show" do
  before(:each) do
    @phone = assign(:phone, stub_model(Phone,
      :brand => "Brand",
      :name => "Name",
      :description => "Description",
      :price => "9.99",
      :quantityInStock => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Brand/)
    rendered.should match(/Name/)
    rendered.should match(/Description/)
    rendered.should match(/9.99/)
    rendered.should match(/1/)
  end
end
