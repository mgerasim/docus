require 'spec_helper'

describe "users/index" do
  before(:each) do
    assign(:users, [
      stub_model(User,
        :name => "Name",
        :encrypted_password => "Encrypted Password",
        :salt => "Salt",
        :role => "Role"
      ),
      stub_model(User,
        :name => "Name",
        :encrypted_password => "Encrypted Password",
        :salt => "Salt",
        :role => "Role"
      )
    ])
  end

  it "renders a list of users" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Encrypted Password".to_s, :count => 2
    assert_select "tr>td", :text => "Salt".to_s, :count => 2
    assert_select "tr>td", :text => "Role".to_s, :count => 2
  end
end
