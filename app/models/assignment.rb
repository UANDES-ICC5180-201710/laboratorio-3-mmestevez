class Assignment < ApplicationRecord
  belongs_to :course
  has_many :grades
  validates_associated :gradess

end
