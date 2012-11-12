require 'spec_helper'

describe "handbook_form_admissions/index" do
  before(:each) do
    assign(:handbook_form_admissions, [
      stub_model(HandbookFormAdmission,
        :name => "Name"
      ),
      stub_model(HandbookFormAdmission,
        :name => "Name"
      )
    ])
  end

  it "renders a list of handbook_form_admissions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
