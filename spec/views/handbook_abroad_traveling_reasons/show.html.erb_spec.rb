require 'spec_helper'

describe "handbook_abroad_traveling_reasons/show" do
  before(:each) do
    @handbook_abroad_traveling_reason = assign(:handbook_abroad_traveling_reason, stub_model(HandbookAbroadTravelingReason,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
