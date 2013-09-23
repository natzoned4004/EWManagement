EWManagement::Application.routes.draw do
  
  resource :users, controller: 'users'
  
  resource :dashboard, only: [:show]

  resources :artists, only: [:new, :create, :show, 
                             :edit, :update, :destroy]
                             
  resources :ewmanagements, only: [:edit, :update, :show]
                             
  root to: 'clearance/sessions#new'
  
end