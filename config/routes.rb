EWManagement::Application.routes.draw do
  resource :users, controller: 'users'
  
  resource :dashboard, only: [:show]

  resources :artists, only: [:new, :create, :show, 
                             :edit, :update, :destroy]
  
  constraints Clearance::Constraints::SignedIn.new do
       root to: 'dashboards#show'
      

  end
  
  constraints Clearance::Constraints::SignedOut.new do
     # root to: 
  end
  
end