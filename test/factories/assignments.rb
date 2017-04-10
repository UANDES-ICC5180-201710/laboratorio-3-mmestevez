FactoryGirl.define do
  factory :assignment do |assignment|
    assignment.title 'test 1'
    assignment.statement '123c123c123c123c123c123c'
    association :course, factory: :course, code: '123c'
  end
end
