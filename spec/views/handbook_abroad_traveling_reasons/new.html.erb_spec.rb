require 'spec_helper'

describe "handbook_abroad_traveling_reasons/new" do
  before(:each) do
    assign(:handbook_abroad_traveling_reason, stub_model(HandbookAbroadTravelingReason,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new handbook_abroad_traveling_reason form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => handbook_abroad_traveling_reasons_path, :method => "post" do
      assert_select "input#handbook_abroad_traveling_reason_name", :name => "handbook_abroad_traveling_reason[name]"
    end
  end
end
