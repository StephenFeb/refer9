Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'about' => 'about#index'
  get 'refer' => 'refer#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :jobs
  
 resources :users

  resources :posts do
    resources :comments
  end

  resources :conversations do
    resources :messages
  end


  resources :cvs, only: [:index, :show, :new, :create, :destroy]

  get "profile/:username" => "users#show", as: :profile

end
