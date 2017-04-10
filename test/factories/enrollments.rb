FactoryGirl.define do
  factory :enrollment do
    association :student, factory: :student, last_name: 'Gonzalez'
    association :course, factory: :course, code: '123c'
  end
end
