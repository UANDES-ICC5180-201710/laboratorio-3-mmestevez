FactoryGirl.define do
  factory :grade do
    association :student, factory: :student, last_name: 'Gonzalez'
    association :course, factory: :course, code: '123c'
    value 4.4
  end
end
