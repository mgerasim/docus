class RenameEmployeeAppointmentDate < ActiveRecord::Migration
  def change
  	rename_column :employees, :appointment_data, :appointment_date
  end
end
