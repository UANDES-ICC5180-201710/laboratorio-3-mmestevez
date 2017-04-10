FactoryGirl.define do
  factory :course do |c|
    c.title 'Calculo'
    c.code  '123c'
    c.quota '30'
    association :teacher, factory: :teacher, last_name: "Estevez"
  end
end
