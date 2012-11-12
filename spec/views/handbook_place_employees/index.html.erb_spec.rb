require 'spec_helper'

describe "handbook_place_employees/index" do
  before(:each) do
    assign(:handbook_place_employees, [
      stub_model(HandbookPlaceEmployee,
        :fullname => "Fullname",
        :shortname => "Shortname"
      ),
      stub_model(HandbookPlaceEmployee,
        :fullname => "Fullname",
        :shortname => "Shortname"
      )
    ])
  end

  it "renders a list of handbook_place_employees" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Fullname".to_s, :count => 2
    assert_select "tr>td", :text => "Shortname".to_s, :count => 2
  end
end
