#encoding: utf-8
class Employee < ActiveRecord::Base
  belongs_to :handbook_place_employee
  belongs_to :handbook_structual_unit
  belongs_to :handbook_division
  belongs_to :handbook_jobposition
  attr_accessible :additional_information, :admission, :admission_act_of_termination, :admission_approval, :admission_message_of_termination, :admission_order, :appointment_date, :dismissal_order, :firstname, :foreign_passport, :having_relatives_abroad, :initials, :lastname, :passport_issuing_authority, :passport_number, :previous_job_awareness, :secondname, :temporary_restriction_of_exit_from_russia_contact_date, :who_abroad, :handbook_jobposition_id, :handbook_place_employee_id, :handbook_structual_unit_id, :handbook_division_id
  HUMANIZED_ATTRIBUTES = {
  	:additional_information => "Дополнительная информация",
  	:admission => "Форма допуска",
  	:admission_act_of_termination => "Номер и дата акта о прекращении допуска",
  	:admission_approval => "Номер и дата согласования допуска",
  	:admission_message_of_termination => "Номер и дата сообщения о прекращении допуска",
  	:admission_order => "Номер и дата распоряжения о допуске",
  	:appointment_date => "Дата заключения договора (контракта, расписки) о временном ограничении права на выезд  из РФ",
  	:dismissal_order => "Номер и дата распоряжения об увольнении",
  	:firstname => "Имя",
  	:foreign_passport => "Наличие загранпаспорта",
  	:having_relatives_abroad => "Наличие родственников за границей",
  	:initials => "Инициалы",
  	:lastname => "Фамилия",
  	:passport_issuing_authority => "Кем выдан",
  	:passport_number => "Серия  и номер паспорта",
  	:previous_job_awareness => "Осведомленность по предыдущим местам работы",
  	:secondname => "Отчество",
  	:temporary_restriction_of_exit_from_russia_contact_date => "Дата заключения договора (контракта, расписки) о временном ограничении права на выезд  из РФ",
  	:who_abroad => "Кто за границей",
  	:handbook_place_employee => "Место работы сотрудника",
  	:handbook_structual_unit => "Наименование структурного подразделение места работы",
  	:handbook_division => "Наименование подразделения места работы",
  	:handbook_jobposition => "Наименование должности"
  }
  def self.human_attribute_name(attr, options={})
	HUMANIZED_ATTRIBUTES[attr.to_sym] || super
  end
  HAVING_RELATIVES_ABROAD_ENUM = [
    ["нет",   "нет"],
    ["да",    "да"]
  ]
  FOREIGN_PASSPORT_ENUM = [
    ["нет", "нет"],
    ["обыкновенный", "обыкновенный"],
    ["служебный", "служебный"]
  ]
  ADMISSION_ENUM = [
    ["1", "1"],
    ["2", "2"],
    ["3", "3"],
    [" 3прв", " 3прв"]
  ]
end
