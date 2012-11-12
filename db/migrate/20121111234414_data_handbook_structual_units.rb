#encoding: utf-8
class DataHandbookStructualUnits < ActiveRecord::Migration
  def up
  	HandbookStructualUnit.create!(:fullname => 'управление по земельным отношениям', :shortname => 'отдел по распоряжению краевым земельным фондом и кадастровой оценке земель')
  	HandbookStructualUnit.create!(:fullname => 'управление приватизации, правовой и кадровой работы', :shortname => 'отдел кадровой и мобилизационной работы')
  end

  def down
  	HandbookStructualUnit.delete_all
  end
end
