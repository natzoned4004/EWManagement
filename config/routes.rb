EWManagement::Application.routes.draw do
  resources :artists, only: [:new, :create, :show,
                             :edit, :update, :destroy]
  resource :dashboard, only: [:show]
  resources :static_pages, only: [:show, :edit, :update]
 
  resources :users,
    :controller => 'users',
    :only => [:create] do
      resource :password,
        :controller => 'clearance/passwords',
        :only => [:create, :edit, :update]
    end
  
  root to: 'static_pages#home'
end