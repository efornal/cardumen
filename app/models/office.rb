class Office < ActiveRecord::Base
  has_many :employees
  has_many :phones
end
