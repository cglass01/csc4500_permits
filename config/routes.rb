Rails.application.routes.draw do
  resources :permits
  resources :vehicles
  resources :emergency_contacts
  resources :faculties
  resources :students
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
