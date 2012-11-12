#encoding: utf-8
class DataHandbookDocumentMark < ActiveRecord::Migration
  def up
  	HandbookDocumentMark.create!(:name => 'нет')
  	HandbookDocumentMark.create!(:name => 'Литер "М"')
  end

  def down
  	HandbookDocumentMark.delete_all
  end
end
