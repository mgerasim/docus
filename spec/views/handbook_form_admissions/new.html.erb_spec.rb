require 'spec_helper'

describe "handbook_form_admissions/new" do
  before(:each) do
    assign(:handbook_form_admission, stub_model(HandbookFormAdmission,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new handbook_form_admission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => handbook_form_admissions_path, :method => "post" do
      assert_select "input#handbook_form_admission_name", :name => "handbook_form_admission[name]"
    end
  end
end
