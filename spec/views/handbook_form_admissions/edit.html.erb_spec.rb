require 'spec_helper'

describe "handbook_form_admissions/edit" do
  before(:each) do
    @handbook_form_admission = assign(:handbook_form_admission, stub_model(HandbookFormAdmission,
      :name => "MyString"
    ))
  end

  it "renders the edit handbook_form_admission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => handbook_form_admissions_path(@handbook_form_admission), :method => "post" do
      assert_select "input#handbook_form_admission_name", :name => "handbook_form_admission[name]"
    end
  end
end
