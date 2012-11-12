require 'spec_helper'

describe "handbook_divisions/show" do
  before(:each) do
    @handbook_division = assign(:handbook_division, stub_model(HandbookDivision,
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
