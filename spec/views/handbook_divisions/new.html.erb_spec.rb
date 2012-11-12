require 'spec_helper'

describe "handbook_divisions/new" do
  before(:each) do
    assign(:handbook_division, stub_model(HandbookDivision,
      :fullname => "MyString",
      :shortname => "MyString"
    ).as_new_record)
  end

  it "renders new handbook_division form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => handbook_divisions_path, :method => "post" do
      assert_select "input#handbook_division_fullname", :name => "handbook_division[fullname]"
      assert_select "input#handbook_division_shortname", :name => "handbook_division[shortname]"
    end
  end
end
