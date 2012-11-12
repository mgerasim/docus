require 'spec_helper'

describe "handbook_divisions/edit" do
  before(:each) do
    @handbook_division = assign(:handbook_division, stub_model(HandbookDivision,
      :fullname => "MyString",
      :shortname => "MyString"
    ))
  end

  it "renders the edit handbook_division form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => handbook_divisions_path(@handbook_division), :method => "post" do
      assert_select "input#handbook_division_fullname", :name => "handbook_division[fullname]"
      assert_select "input#handbook_division_shortname", :name => "handbook_division[shortname]"
    end
  end
end
