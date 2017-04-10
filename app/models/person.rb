class Person < ApplicationRecord
  has_many :enrollments
  validates_associated :enrollments
  has_many :courses, through: :enrollments
  validates_associated :courses
  has_many :grades
  validates_associated :grades

  validates :first_name, presence: true, length: { maximum: 30 }
  validates :last_name, presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 50 }, uniqueness: true, :confirmation => true
  validates_format_of :email, :with => /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email_confirmation, presence: true
  def to_s
    return first_name + ' ' + last_name
  end
end
