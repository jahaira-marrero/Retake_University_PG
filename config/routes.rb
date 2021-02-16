Rails.application.routes.draw do
  # resources :grades
  
  # resources :office_hours
  get '/officehours', to: 'officehours#index', as: "officehours"
  get '/officehours/new', to: 'officehours#new', as: "new_officehour"
  post '/officehours', to: 'officehours#create'
  get '/officehours/:id', to: 'officehours#show', as: "officehour"
  get '/officehours/:id/edit', to: 'officehours#edit', as: "edit_officehour"
  patch '/officehours/:id', to: 'officehours#update'
  delete '/officehours/:id', to: 'officehours#destroy'

  # resources :grades
  get '/grades', to: 'grades#index', as: "grades"
  get '/grades/new', to: 'grades#new', as: "new_grade"
  post '/grades', to: 'grades#create'
  get '/grades/:id', to: 'grades#show', as: "grade"
  get '/grades/:id/edit', to: 'grades#edit', as: "edit_grade"
  patch '/grades/:id', to: 'grades#update'
  delete '/grades/:id', to: 'grades#destroy'
  
  # resources :instructors
  get '/instructors', to: 'instructors#index', as: "instructors"
  get '/instructors/new', to: 'instructors#new', as: "new_instructor"
  post '/instructors', to: 'instructors#create'
  get '/instructors/:id', to: 'instructors#show', as: "instructor"
  get '/instructors/:id/edit', to: 'instructors#edit', as: "edit_instructor"
  patch '/instructors/:id', to: 'instructors#update'
  delete '/instructors/:id', to: 'instructors#destroy'


  # resources :courses
  patch '/courses/:id/enroll', to: 'courses#enroll', as: 'enroll_course'

  get '/courses', to: 'courses#index', as: "courses"
  get '/courses/new', to: 'courses#new', as: "new_course"
  post '/courses', to: 'courses#create'
  get '/courses/:id', to: 'courses#show', as: "course"
  get '/courses/:id/edit', to: 'courses#edit', as: "edit_course"
  patch '/courses/:id', to: 'courses#update'
  delete '/courses/:id', to: 'courses#destroy'

  


  # resources :students


  get '/students', to: 'students#index', as: "students"
  get '/students/new', to: 'students#new', as: "new_student"
  post '/students', to: 'students#create'
  get '/students/:id', to: 'students#show', as: "student"
  get '/students/:id/edit', to: 'students#edit', as: "edit_student"
  patch '/students/:id', to: 'students#update'
  delete '/students/:id', to: 'students#destroy'




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
