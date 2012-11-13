require 'spec_helper'

describe "employees/edit" do
  before(:each) do
    @employee = assign(:employee, stub_model(Employee,
      :lastname => "MyString",
      :firstname => "MyString",
      :secondname => "MyString",
      :initials => "MyString",
      :handbook_place_employee => nil,
      :handbook_structual_unit => nil,
      :handbook_division => nil,
      :handbook_jobposition => nil,
      :appointment_data => "MyString",
      :admission => "MyString",
      :previous_job_awareness => "MyString",
      :admission_approval => "MyString",
      :admission_order => "MyString",
      :temporary_restriction_of_exit_from_russia_contact_date => "MyString",
      :dismissal_order => "MyString",
      :admission_act_of_termination => "MyString",
      :admission_message_of_termination => "MyString",
      :foreign_passport => "MyString",
      :passport_number => "MyString",
      :passport_issuing_authority => "MyString",
      :having_relatives_abroad => "MyString",
      :who_abroad => "MyString",
      :additional_information => "MyText"
    ))
  end

  it "renders the edit employee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => employees_path(@employee), :method => "post" do
      assert_select "input#employee_lastname", :name => "employee[lastname]"
      assert_select "input#employee_firstname", :name => "employee[firstname]"
      assert_select "input#employee_secondname", :name => "employee[secondname]"
      assert_select "input#employee_initials", :name => "employee[initials]"
      assert_select "input#employee_handbook_place_employee", :name => "employee[handbook_place_employee]"
      assert_select "input#employee_handbook_structual_unit", :name => "employee[handbook_structual_unit]"
      assert_select "input#employee_handbook_division", :name => "employee[handbook_division]"
      assert_select "input#employee_handbook_jobposition", :name => "employee[handbook_jobposition]"
      assert_select "input#employee_appointment_data", :name => "employee[appointment_data]"
      assert_select "input#employee_admission", :name => "employee[admission]"
      assert_select "input#employee_previous_job_awareness", :name => "employee[previous_job_awareness]"
      assert_select "input#employee_admission_approval", :name => "employee[admission_approval]"
      assert_select "input#employee_admission_order", :name => "employee[admission_order]"
      assert_select "input#employee_temporary_restriction_of_exit_from_russia_contact_date", :name => "employee[temporary_restriction_of_exit_from_russia_contact_date]"
      assert_select "input#employee_dismissal_order", :name => "employee[dismissal_order]"
      assert_select "input#employee_admission_act_of_termination", :name => "employee[admission_act_of_termination]"
      assert_select "input#employee_admission_message_of_termination", :name => "employee[admission_message_of_termination]"
      assert_select "input#employee_foreign_passport", :name => "employee[foreign_passport]"
      assert_select "input#employee_passport_number", :name => "employee[passport_number]"
      assert_select "input#employee_passport_issuing_authority", :name => "employee[passport_issuing_authority]"
      assert_select "input#employee_having_relatives_abroad", :name => "employee[having_relatives_abroad]"
      assert_select "input#employee_who_abroad", :name => "employee[who_abroad]"
      assert_select "textarea#employee_additional_information", :name => "employee[additional_information]"
    end
  end
end
