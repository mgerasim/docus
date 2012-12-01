#encoding: utf-8
class HandbookFormAdmission < ActiveRecord::Base
  attr_accessible :name
  HUMANIZED_ATTRIBUTES = {
  	:name => "Наименование"
  }
  def self.human_attribute_name(attr, options={})
	HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end
end
