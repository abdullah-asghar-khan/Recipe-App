Rails.application.routes.draw do

  # root "recipes#public_recipes"

  # devise_for :users, skip: [:sessions]
  # as :user do
  #   get 'login', to: 'devise/sessions#new', as: :new_user_session
  #   post 'register', to: 'devise/sessions#create', as: :user_session
  #   get 'logout', to: 'devise/sessions#destroy', as: :destroy_user_session
  # end
  
  # get 'public_recipes', to: 'recipes#public_recipes'
  # resources :users, only: [:index, :show, :new, :create, :destroy] 

  # resources :recipes, only: [:index, :show, :new, :create, :destroy ] do
  #   resources :recipe_foods, only: [:new, :create, :edit, :destroy]
  # end

  # resources :foods, only: [:index, :new, :create, :destroy ]   
  
  resources :recipes, only: [:index, :new, :create, :destroy ]
  resources :foods, only: [:index, :new, :create, :destroy ]
  
  devise_for :users

    devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end

  root to: "home#index"

end
