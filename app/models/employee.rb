class Employee < ActiveRecord::Base
  belongs_to :office
  belongs_to :phone

  def name_and_surname
    "#{self.surname}, #{self.name}"
  end

end
