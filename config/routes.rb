EWManagement::Application.routes.draw do
  resources :artists, only: [:new, :create, :show, 
                             :edit, :update, :destroy]
  resource :dashboard, only: [:show]
  resources :companies, only: [:edit, :update, :show]      
  resources :users, controller: 'users', only: [:edit, :update]  
  root to: 'clearance/sessions#new'
end