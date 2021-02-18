Rails.application.routes.draw do

  get '/grades/new', to: 'grades#new', as: "new_grade"
  post '/grades', to: 'grades#create'
 
  get '/instructors', to: 'instructors#index', as: "instructors"
  get '/instructors/:id', to: 'instructors#show', as: "instructor"

  get '/courses', to: 'courses#index', as: "courses"
  get '/courses/:id', to: 'courses#show', as: "course"

  get '/students', to: 'students#index', as: "students"
  get '/students/new', to: 'students#new', as: "new_student"
  post '/students', to: 'students#create'
  get '/students/:id', to: 'students#show', as: "student"
  get '/students/:id/edit', to: 'students#edit', as: "edit_student"
  patch '/students/:id', to: 'students#update'
  delete '/students/:id', to: 'students#destroy'




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
