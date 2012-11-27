#encoding: utf-8
class HandbookDivisionKhabarovsk < ActiveRecord::Migration
  def up
  	HandbookDivision.create!(:fullname => 'Хабаровск', :shortname => 'Хбр')
  	
  end

  def down
  	HandbookDivision.delete_all
  end
end
