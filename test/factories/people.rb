FactoryGirl.define do

  factory :student, class: Person do |student|
    student.first_name 'Jose Tomas'
    student.last_name 'Gonzalez'
    student.email 'josetomas@miuandes.cl'
    student.email_confirmation 'josetomas@miuandes.cl'
    student.is_professor false
  end
  factory :teacher, class: Person do |teacher|
    teacher.first_name 'Margarita'
    teacher.last_name 'Estevez'
    teacher.email 'margaret@miuandes.cl'
    teacher.email_confirmation 'margaret@miuandes.cl'
    teacher.is_professor true
  end
end
