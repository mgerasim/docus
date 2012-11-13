require 'spec_helper'

describe "abroads/index" do
  before(:each) do
    assign(:abroads, [
      stub_model(Abroad,
        :employee => nil,
        :country => "Country",
        :date_to => "Date To",
        :purpose => "Purpose",
        :awareness_conclusion => "Awareness Conclusion",
        :making_on_out => "Making On Out",
        :solution_output => "Solution Output",
        :additional_data => "MyText"
      ),
      stub_model(Abroad,
        :employee => nil,
        :country => "Country",
        :date_to => "Date To",
        :purpose => "Purpose",
        :awareness_conclusion => "Awareness Conclusion",
        :making_on_out => "Making On Out",
        :solution_output => "Solution Output",
        :additional_data => "MyText"
      )
    ])
  end

  it "renders a list of abroads" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Country".to_s, :count => 2
    assert_select "tr>td", :text => "Date To".to_s, :count => 2
    assert_select "tr>td", :text => "Purpose".to_s, :count => 2
    assert_select "tr>td", :text => "Awareness Conclusion".to_s, :count => 2
    assert_select "tr>td", :text => "Making On Out".to_s, :count => 2
    assert_select "tr>td", :text => "Solution Output".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
