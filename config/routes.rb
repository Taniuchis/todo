Rails.application.routes.draw do
 resources :todo_lists
 resources :todo_lists do
   resources :todo_tasks do
    member do
     patch :complete
    end
  end
end
  get  'pages/about'
  get 'pages/index'
  devise_for :users
  root to: "pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
