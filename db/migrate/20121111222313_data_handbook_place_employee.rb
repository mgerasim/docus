#encoding: utf-8
class DataHandbookPlaceEmployee < ActiveRecord::Migration
  def up
  	HandbookPlaceEmployee.create!(:fullname=>'министерство жилищно-коммунального хозяйства', :shortname=>'мин ЖКХ')
  	HandbookPlaceEmployee.create!(:fullname=>'министерство здравоохранения', :shortname=>'мин здрав')
  	HandbookPlaceEmployee.create!(:fullname=>'министерство имущественных отношений', :shortname=>'мин имущество')
  	HandbookPlaceEmployee.create!(:fullname=>'министерство культуры', :shortname=>'мин культуры')
  	HandbookPlaceEmployee.create!(:fullname=>'министерство образования и науки', :shortname=>'мин образов. и науки')
  	HandbookPlaceEmployee.create!(:fullname=>'министерство природных ресурсов', :shortname=>'мин природ. ресурсов')
  	HandbookPlaceEmployee.create!(:fullname=>'министерство промышленности и транспорта', :shortname=>'мин пром. и трансп')
  	HandbookPlaceEmployee.create!(:fullname=>'министерство сельского хозяйства и продовольствия', :shortname=>'мин сельхоз и продовол.')
  	HandbookPlaceEmployee.create!(:fullname=>'министерство социальной защиты населения', :shortname=>'мин соцзащиты населения')
  	HandbookPlaceEmployee.create!(:fullname=>'министерство строительства', :shortname=>'мин строительства')
  	HandbookPlaceEmployee.create!(:fullname=>'министерство финансов', :shortname=>'мин ЖКХ')
  	HandbookPlaceEmployee.create!(:fullname=>'министерство экономического развития и внешних связей', :shortname=>'мин финансов')
  	HandbookPlaceEmployee.create!(:fullname=>'министерство по информационным технологиям и связи', :shortname=>'мин ЖКХ')
  	HandbookPlaceEmployee.create!(:fullname=>'государственная жилищная инспекция правительства края', :shortname=>'жил инспекция')
  	HandbookPlaceEmployee.create!(:fullname=>'инспекция государственного строительного надзора Правительства края', :shortname=>'инсп госстроинадзора')
  	HandbookPlaceEmployee.create!(:fullname=>'комитет государственного заказа Правительства края', :shortname=>'ком госзаказа')
  	HandbookPlaceEmployee.create!(:fullname=>'управление по печати, полиграфической промышленности и телевещанию Правительства края', :shortname=>'упр по печ, полгр пр и телвещ')
  	HandbookPlaceEmployee.create!(:fullname=>'комитет Правительства края по развитию топливно-энергетического комплекса', :shortname=>'ком по развитию ТЭК')
  	HandbookPlaceEmployee.create!(:fullname=>'комитет по труду и занятости населения Правительства края', :shortname=>'ком по труду и занятости')
  	HandbookPlaceEmployee.create!(:fullname=>'комитет по ценам и тарифам Правительства края', :shortname=>'ком по ценам и тарифам')
  	HandbookPlaceEmployee.create!(:fullname=>'комитет по спорту Правительства края', :shortname=>'ком по спорту')
  	HandbookPlaceEmployee.create!(:fullname=>'комитет Правительства края по обеспечению деятельности мировых судей, государственных нотариусов и административных комиссий', :shortname=>'ком мир.суд, гос.нотар. и адм.ком.')
  	HandbookPlaceEmployee.create!(:fullname=>'управление гражданской защиты Правительства края', :shortname=>'упр гражд. защиты')
  	HandbookPlaceEmployee.create!(:fullname=>'управление записи актов гражданского состояния Правительства края', :shortname=>'упр. ЗАГС')
  	HandbookPlaceEmployee.create!(:fullname=>'управление ветеринарии Правительства края', :shortname=>'упр. ветеринарии')
  end

  def down
  	HandbookPlaceEmployee.delete_all
  end
end
