require 'spec_helper'

describe "handbook_abroad_traveling_reasons/index" do
  before(:each) do
    assign(:handbook_abroad_traveling_reasons, [
      stub_model(HandbookAbroadTravelingReason,
        :name => "Name"
      ),
      stub_model(HandbookAbroadTravelingReason,
        :name => "Name"
      )
    ])
  end

  it "renders a list of handbook_abroad_traveling_reasons" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
