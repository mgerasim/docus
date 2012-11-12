require 'spec_helper'

describe "handbook_structual_units/show" do
  before(:each) do
    @handbook_structual_unit = assign(:handbook_structual_unit, stub_model(HandbookStructualUnit,
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
