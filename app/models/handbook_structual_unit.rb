#encoding: utf-8
class HandbookStructualUnit < ActiveRecord::Base
  attr_accessible :fullname, :shortname
  HUMANIZED_ATTRIBUTES = {
  	:fullname => "Полное наименование",
  	:shortname => "Краткое наименование"
  }
  def self.human_attribute_name(attr, options={})
	HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end
end
