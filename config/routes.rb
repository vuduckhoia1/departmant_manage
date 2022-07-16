Rails.application.routes.draw do
  resources :user_projects
  resources :projects
  resources :departments


  devise_for :users
  resources :users, path: '/admin/users'
  root 'pages#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  
end
