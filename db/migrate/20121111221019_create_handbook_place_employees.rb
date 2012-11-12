class CreateHandbookPlaceEmployees < ActiveRecord::Migration
  def change
    create_table :handbook_place_employees do |t|
      t.string :fullname
      t.string :shortname

      t.timestamps
    end
  end
end
