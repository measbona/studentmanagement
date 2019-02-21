Rails.application.routes.draw do
  # get 'departments/name:string'
  root "students#index"
  # get "students" => "students#index"
  # get "students/:id" => "students#show", as: "student"
  # delete "students/:id" => "students#destroy" 
  # get "students/:id/edit" => "students#edit", as: "edit_student"
  # patch "students/:id" => "students#update"
  resources :students
  resources :departments
end
