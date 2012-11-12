require 'spec_helper'

describe "handbook_form_admissions/show" do
  before(:each) do
    @handbook_form_admission = assign(:handbook_form_admission, stub_model(HandbookFormAdmission,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
