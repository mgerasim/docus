class CreateHandbookAbroadTravelingReasons < ActiveRecord::Migration
  def change
    create_table :handbook_abroad_traveling_reasons do |t|
      t.string :name

      t.timestamps
    end
  end
end
