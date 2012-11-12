require 'spec_helper'

describe "handbook_jobpositions/index" do
  before(:each) do
    assign(:handbook_jobpositions, [
      stub_model(HandbookJobposition,
        :fullname => "Fullname",
        :shortname => "Shortname"
      ),
      stub_model(HandbookJobposition,
        :fullname => "Fullname",
        :shortname => "Shortname"
      )
    ])
  end

  it "renders a list of handbook_jobpositions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Fullname".to_s, :count => 2
    assert_select "tr>td", :text => "Shortname".to_s, :count => 2
  end
end
