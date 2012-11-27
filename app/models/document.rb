#encoding: utf-8
class Document < ActiveRecord::Base
  attr_accessible :docdate, :docnumber, :file_number, :location_document, :mark, :name, :registration_date, :registration_number, :security_classification, :source, :subject, :summary
  HUMANIZED_ATTRIBUTES = {
  	:docdate => "Дата документа",
  	:docnumber => "Номер документа",
  	:file_number => "Номер дела",
  	:location_document => "Место нахождения документа",
  	:mark => "Пометка",
  	:name => "Наименование документа",
  	:registration_date => "Дата регистрации",
  	:registration_number => "Регистрационный номер",
  	:security_classification => "Гриф секретности",
  	:source => "Откуда поступил",
  	:subject => "Тема",
  	:summary => "Краткое содержание",
  }
  def self.human_attribute_name(attr, options={})
	HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end
end
