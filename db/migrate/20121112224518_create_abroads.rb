class CreateAbroads < ActiveRecord::Migration
  def change
    create_table :abroads do |t|
      t.references :employee
      t.string :country
      t.string :date_to
      t.string :purpose
      t.string :awareness_conclusion
      t.string :making_on_out
      t.string :solution_output
      t.text :additional_data

      t.timestamps
    end
    add_index :abroads, :employee_id
  end
end
