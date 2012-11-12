class CreateHandbookDocumentMarks < ActiveRecord::Migration
  def change
    create_table :handbook_document_marks do |t|
      t.string :name

      t.timestamps
    end
  end
end
