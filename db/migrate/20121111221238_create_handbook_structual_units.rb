class CreateHandbookStructualUnits < ActiveRecord::Migration
  def change
    create_table :handbook_structual_units do |t|
      t.string :fullname
      t.string :shortname

      t.timestamps
    end
  end
end
