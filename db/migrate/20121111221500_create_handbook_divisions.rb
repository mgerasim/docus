class CreateHandbookDivisions < ActiveRecord::Migration
  def change
    create_table :handbook_divisions do |t|
      t.string :fullname
      t.string :shortname

      t.timestamps
    end
  end
end
