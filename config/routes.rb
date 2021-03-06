Rails.application.routes.draw do
  resources :grades
  resources :assignments
  resources :enrollments
  resources :courses
  resources :people do
    get 'professors', on: :collection
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'courses#index'
end
