require 'spec_helper'

describe "abroads/edit" do
  before(:each) do
    @abroad = assign(:abroad, stub_model(Abroad,
      :employee => nil,
      :country => "MyString",
      :date_to => "MyString",
      :purpose => "MyString",
      :awareness_conclusion => "MyString",
      :making_on_out => "MyString",
      :solution_output => "MyString",
      :additional_data => "MyText"
    ))
  end

  it "renders the edit abroad form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => abroads_path(@abroad), :method => "post" do
      assert_select "input#abroad_employee", :name => "abroad[employee]"
      assert_select "input#abroad_country", :name => "abroad[country]"
      assert_select "input#abroad_date_to", :name => "abroad[date_to]"
      assert_select "input#abroad_purpose", :name => "abroad[purpose]"
      assert_select "input#abroad_awareness_conclusion", :name => "abroad[awareness_conclusion]"
      assert_select "input#abroad_making_on_out", :name => "abroad[making_on_out]"
      assert_select "input#abroad_solution_output", :name => "abroad[solution_output]"
      assert_select "textarea#abroad_additional_data", :name => "abroad[additional_data]"
    end
  end
end
