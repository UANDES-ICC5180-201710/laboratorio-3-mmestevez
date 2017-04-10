class Course < ApplicationRecord
  has_many :enrollments
  validates_associated :enrollments
  has_many :students, through: :enrollments
  validates_associated :students
  belongs_to :teacher, class_name: 'Person', foreign_key: 'person_id'
  validates_associated :teacher
  has_many :assignments
  validates_associated :assignments

  validates :title, uniqueness: true, presence: true, length: { maximum: 30 }
  validates :code, uniqueness: true, presence: true, length: { maximum: 10 }
  validates :quota, presence: true, :numericality => { :only_integer => true }

  def to_s
    return title
  end

  def self.search(search)
    where('title LIKE ? or code LIKE ?', "%#{search}%", "%#{search}%")
  end
end
