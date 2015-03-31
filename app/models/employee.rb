class Employee < ActiveRecord::Base
  belongs_to :office
  belongs_to :phone
end
