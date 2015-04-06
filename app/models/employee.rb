class Employee < ActiveRecord::Base
  belongs_to :office

  def name_and_surname
    "#{self.surname}, #{self.name}"
  end

end
