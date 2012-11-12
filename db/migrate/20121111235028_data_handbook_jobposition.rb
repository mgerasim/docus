#encoding: utf-8
class DataHandbookJobposition < ActiveRecord::Migration
  def up
  	HandbookJobposition.create!(:fullname => 'заместитель начальника управления – начальник отдела', :shortname => 'зам нач упр – нач отд')
  	HandbookJobposition.create!(:fullname => 'министр', :shortname => 'министр')
  	HandbookJobposition.create!(:fullname => 'первый заместитель министра', :shortname => 'пер зам министра')
  	HandbookJobposition.create!(:fullname => 'заместитель министра', :shortname => 'зам министра')
  	HandbookJobposition.create!(:fullname => 'начальник управления', :shortname => 'нач управления')
  	HandbookJobposition.create!(:fullname => 'председатель комитета', :shortname => 'пред комитета')
  	HandbookJobposition.create!(:fullname => 'заместитель председателя комитета', :shortname => 'зам пред комитета')
  	HandbookJobposition.create!(:fullname => 'заместитель начальника управления', :shortname => 'зам нач управления')
  	HandbookJobposition.create!(:fullname => 'начальник отдела', :shortname => 'нач отдела')
  	HandbookJobposition.create!(:fullname => 'заместитель начальника отдела', :shortname => 'зам нач отдела')
  	HandbookJobposition.create!(:fullname => 'заведующий отделом', :shortname => 'зав отделом')
  	HandbookJobposition.create!(:fullname => 'заведующий сектором', :shortname => 'зав сектором')
  	HandbookJobposition.create!(:fullname => 'ведущий инженер', :shortname => 'вед инженер')
  	HandbookJobposition.create!(:fullname => 'консультант', :shortname => 'консультант')
  	HandbookJobposition.create!(:fullname => 'главный специалист', :shortname => 'гл.специалист')  	
  end

  def down
  	HandbookJobposition.delete_all
  end
end
