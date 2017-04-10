class Grade < ApplicationRecord
  belongs_to :person
  belongs_to :assignment

  validates :value, presence: true, :numericality => { :grater_than_or_equal_to => 1, :less_than_or_equal_to => 7 }
end
