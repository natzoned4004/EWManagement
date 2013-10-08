EWManagement::Application.routes.draw do
  resources :artists, only: [:new, :create, :show,
                             :edit, :update, :destroy]
  resource :dashboard, only: [:show]
  resources :static_pages, only: [:show, :edit, :update]
  root to: 'static_pages#home'
end