class CreateHandbookJobpositions < ActiveRecord::Migration
  def change
    create_table :handbook_jobpositions do |t|
      t.string :fullname
      t.string :shortname

      t.timestamps
    end
  end
end
