class CreateHandbookFormAdmissions < ActiveRecord::Migration
  def change
    create_table :handbook_form_admissions do |t|
      t.string :name

      t.timestamps
    end
  end
end
