require 'spec_helper'

describe "abroads/show" do
  before(:each) do
    @abroad = assign(:abroad, stub_model(Abroad,
      :employee => nil,
      :country => "Country",
      :date_to => "Date To",
      :purpose => "Purpose",
      :awareness_conclusion => "Awareness Conclusion",
      :making_on_out => "Making On Out",
      :solution_output => "Solution Output",
      :additional_data => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(/Country/)
    rendered.should match(/Date To/)
    rendered.should match(/Purpose/)
    rendered.should match(/Awareness Conclusion/)
    rendered.should match(/Making On Out/)
    rendered.should match(/Solution Output/)
    rendered.should match(/MyText/)
  end
end
