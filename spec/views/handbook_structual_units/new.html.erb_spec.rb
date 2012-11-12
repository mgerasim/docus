require 'spec_helper'

describe "handbook_structual_units/new" do
  before(:each) do
    assign(:handbook_structual_unit, stub_model(HandbookStructualUnit,
      :fullname => "MyString",
      :shortname => "MyString"
    ).as_new_record)
  end

  it "renders new handbook_structual_unit form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => handbook_structual_units_path, :method => "post" do
      assert_select "input#handbook_structual_unit_fullname", :name => "handbook_structual_unit[fullname]"
      assert_select "input#handbook_structual_unit_shortname", :name => "handbook_structual_unit[shortname]"
    end
  end
end
