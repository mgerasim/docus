#encoding: utf-8
class Abroad < ActiveRecord::Base
  belongs_to :employee
  attr_accessible :additional_data, :awareness_conclusion, :country, :date_to, :making_on_out, :purpose, :solution_output, :employee_id
  HUMANIZED_ATTRIBUTES = {
  	:additional_data => "Дополнительные данные по выезду",
  	:awareness_conclusion => "Номер и дата заключения",
  	:country => "Страна выезда", 
  	:date_to => "Дата выезда",
  	:making_on_out => "Номер и дата решения",
  	:purpose => "Цель выезда",
  	:solution_output => "Вывод решения",
  	:employee_id => "Сотрудник",
  	:employee => "Сотрудник"
  }
  def self.human_attribute_name(attr, options={})
	HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end
end
