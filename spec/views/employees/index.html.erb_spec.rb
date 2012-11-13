require 'spec_helper'

describe "employees/index" do
  before(:each) do
    assign(:employees, [
      stub_model(Employee,
        :lastname => "Lastname",
        :firstname => "Firstname",
        :secondname => "Secondname",
        :initials => "Initials",
        :handbook_place_employee => nil,
        :handbook_structual_unit => nil,
        :handbook_division => nil,
        :handbook_jobposition => nil,
        :appointment_data => "Appointment Data",
        :admission => "Admission",
        :previous_job_awareness => "Previous Job Awareness",
        :admission_approval => "Admission Approval",
        :admission_order => "Admission Order",
        :temporary_restriction_of_exit_from_russia_contact_date => "Temporary Restriction Of Exit From Russia Contact Date",
        :dismissal_order => "Dismissal Order",
        :admission_act_of_termination => "Admission Act Of Termination",
        :admission_message_of_termination => "Admission Message Of Termination",
        :foreign_passport => "Foreign Passport",
        :passport_number => "Passport Number",
        :passport_issuing_authority => "Passport Issuing Authority",
        :having_relatives_abroad => "Having Relatives Abroad",
        :who_abroad => "Who Abroad",
        :additional_information => "MyText"
      ),
      stub_model(Employee,
        :lastname => "Lastname",
        :firstname => "Firstname",
        :secondname => "Secondname",
        :initials => "Initials",
        :handbook_place_employee => nil,
        :handbook_structual_unit => nil,
        :handbook_division => nil,
        :handbook_jobposition => nil,
        :appointment_data => "Appointment Data",
        :admission => "Admission",
        :previous_job_awareness => "Previous Job Awareness",
        :admission_approval => "Admission Approval",
        :admission_order => "Admission Order",
        :temporary_restriction_of_exit_from_russia_contact_date => "Temporary Restriction Of Exit From Russia Contact Date",
        :dismissal_order => "Dismissal Order",
        :admission_act_of_termination => "Admission Act Of Termination",
        :admission_message_of_termination => "Admission Message Of Termination",
        :foreign_passport => "Foreign Passport",
        :passport_number => "Passport Number",
        :passport_issuing_authority => "Passport Issuing Authority",
        :having_relatives_abroad => "Having Relatives Abroad",
        :who_abroad => "Who Abroad",
        :additional_information => "MyText"
      )
    ])
  end

  it "renders a list of employees" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Lastname".to_s, :count => 2
    assert_select "tr>td", :text => "Firstname".to_s, :count => 2
    assert_select "tr>td", :text => "Secondname".to_s, :count => 2
    assert_select "tr>td", :text => "Initials".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Appointment Data".to_s, :count => 2
    assert_select "tr>td", :text => "Admission".to_s, :count => 2
    assert_select "tr>td", :text => "Previous Job Awareness".to_s, :count => 2
    assert_select "tr>td", :text => "Admission Approval".to_s, :count => 2
    assert_select "tr>td", :text => "Admission Order".to_s, :count => 2
    assert_select "tr>td", :text => "Temporary Restriction Of Exit From Russia Contact Date".to_s, :count => 2
    assert_select "tr>td", :text => "Dismissal Order".to_s, :count => 2
    assert_select "tr>td", :text => "Admission Act Of Termination".to_s, :count => 2
    assert_select "tr>td", :text => "Admission Message Of Termination".to_s, :count => 2
    assert_select "tr>td", :text => "Foreign Passport".to_s, :count => 2
    assert_select "tr>td", :text => "Passport Number".to_s, :count => 2
    assert_select "tr>td", :text => "Passport Issuing Authority".to_s, :count => 2
    assert_select "tr>td", :text => "Having Relatives Abroad".to_s, :count => 2
    assert_select "tr>td", :text => "Who Abroad".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
