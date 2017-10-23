Rails.application.routes.draw do
  devise_for :users
  resources :permits
  resources :vehicles
  resources :emergency_contacts
  resources :faculties
  resources :students
  root to: 'students#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
