require 'spec_helper'

describe "handbook_jobpositions/new" do
  before(:each) do
    assign(:handbook_jobposition, stub_model(HandbookJobposition,
      :fullname => "MyString",
      :shortname => "MyString"
    ).as_new_record)
  end

  it "renders new handbook_jobposition form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => handbook_jobpositions_path, :method => "post" do
      assert_select "input#handbook_jobposition_fullname", :name => "handbook_jobposition[fullname]"
      assert_select "input#handbook_jobposition_shortname", :name => "handbook_jobposition[shortname]"
    end
  end
end
