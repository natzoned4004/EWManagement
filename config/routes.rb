EWManagement::Application.routes.draw do
  
  resources :users, controller: 'users', only: [:edit, :update]
  
  resource :dashboard, only: [:show]

  resources :artists, only: [:new, :create, :show, 
                             :edit, :update, :destroy]
                             
  resources :ewmanagements, only: [:edit, :update, :show]
                             
  root to: 'clearance/sessions#new'
  
end