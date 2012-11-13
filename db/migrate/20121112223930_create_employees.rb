class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :lastname
      t.string :firstname
      t.string :secondname
      t.string :initials
      t.references :handbook_place_employee
      t.references :handbook_structual_unit
      t.references :handbook_division
      t.references :handbook_jobposition
      t.string :appointment_data
      t.string :admission
      t.string :previous_job_awareness
      t.string :admission_approval
      t.string :admission_order
      t.string :temporary_restriction_of_exit_from_russia_contact_date
      t.string :dismissal_order
      t.string :admission_act_of_termination
      t.string :admission_message_of_termination
      t.string :foreign_passport
      t.string :passport_number
      t.string :passport_issuing_authority
      t.string :having_relatives_abroad
      t.string :who_abroad
      t.text :additional_information

      t.timestamps
    end
    add_index :employees, :handbook_place_employee_id
    add_index :employees, :handbook_structual_unit_id
    add_index :employees, :handbook_division_id
    add_index :employees, :handbook_jobposition_id
  end
end
