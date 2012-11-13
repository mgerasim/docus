class Abroad < ActiveRecord::Base
  belongs_to :employee
  attr_accessible :additional_data, :awareness_conclusion, :country, :date_to, :making_on_out, :purpose, :solution_output
end
