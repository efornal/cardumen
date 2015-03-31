class Phone < ActiveRecord::Base
  belongs_to :office
  has_many :employees
end
