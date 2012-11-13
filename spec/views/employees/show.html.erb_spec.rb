require 'spec_helper'

describe "employees/show" do
  before(:each) do
    @employee = assign(:employee, stub_model(Employee,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Lastname/)
    rendered.should match(/Firstname/)
    rendered.should match(/Secondname/)
    rendered.should match(/Initials/)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Appointment Data/)
    rendered.should match(/Admission/)
    rendered.should match(/Previous Job Awareness/)
    rendered.should match(/Admission Approval/)
    rendered.should match(/Admission Order/)
    rendered.should match(/Temporary Restriction Of Exit From Russia Contact Date/)
    rendered.should match(/Dismissal Order/)
    rendered.should match(/Admission Act Of Termination/)
    rendered.should match(/Admission Message Of Termination/)
    rendered.should match(/Foreign Passport/)
    rendered.should match(/Passport Number/)
    rendered.should match(/Passport Issuing Authority/)
    rendered.should match(/Having Relatives Abroad/)
    rendered.should match(/Who Abroad/)
    rendered.should match(/MyText/)
  end
end
