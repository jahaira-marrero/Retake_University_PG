Rails.application.routes.draw do
  resources :office_hours
  resources :registrars
  resources :instructors
  resources :courses
  resources :students
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
