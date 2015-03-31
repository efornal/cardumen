class Phone < ActiveRecord::Base
  belongs_to :office
  has_many :employees

  def to_s
    self.number
  end
end
