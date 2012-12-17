class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :encrypted_password
      t.string :salt
      t.string :role

      t.timestamps
    end
  end
end
