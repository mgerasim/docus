require 'spec_helper'

describe "handbook_abroad_traveling_reasons/edit" do
  before(:each) do
    @handbook_abroad_traveling_reason = assign(:handbook_abroad_traveling_reason, stub_model(HandbookAbroadTravelingReason,
      :name => "MyString"
    ))
  end

  it "renders the edit handbook_abroad_traveling_reason form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => handbook_abroad_traveling_reasons_path(@handbook_abroad_traveling_reason), :method => "post" do
      assert_select "input#handbook_abroad_traveling_reason_name", :name => "handbook_abroad_traveling_reason[name]"
    end
  end
end
