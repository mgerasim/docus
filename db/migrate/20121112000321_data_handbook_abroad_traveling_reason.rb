#encoding: utf-8
class DataHandbookAbroadTravelingReason < ActiveRecord::Migration
  def up
  	HandbookAbroadTravelingReason.create!(:name => 'частная')
  	HandbookAbroadTravelingReason.create!(:name => 'служебная командировка')
  end

  def down
  end
end
