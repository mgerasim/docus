require 'spec_helper'

describe "handbook_place_employees/show" do
  before(:each) do
    @handbook_place_employee = assign(:handbook_place_employee, stub_model(HandbookPlaceEmployee,
      :fullname => "Fullname",
      :shortname => "Shortname"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Fullname/)
    rendered.should match(/Shortname/)
  end
end
