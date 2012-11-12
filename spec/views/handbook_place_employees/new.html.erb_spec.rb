require 'spec_helper'

describe "handbook_place_employees/new" do
  before(:each) do
    assign(:handbook_place_employee, stub_model(HandbookPlaceEmployee,
      :fullname => "MyString",
      :shortname => "MyString"
    ).as_new_record)
  end

  it "renders new handbook_place_employee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => handbook_place_employees_path, :method => "post" do
      assert_select "input#handbook_place_employee_fullname", :name => "handbook_place_employee[fullname]"
      assert_select "input#handbook_place_employee_shortname", :name => "handbook_place_employee[shortname]"
    end
  end
end
