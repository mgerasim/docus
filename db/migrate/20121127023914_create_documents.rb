class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.date :docdate
      t.string :docnumber
      t.string :source
      t.string :name
      t.text :summary
      t.string :subject
      t.string :security_classification
      t.string :mark
      t.date :registration_date
      t.string :registration_number
      t.string :location_document
      t.string :file_number

      t.timestamps
    end
  end
end
