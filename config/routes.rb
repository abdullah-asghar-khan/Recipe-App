Rails.application.routes.draw do
  
  resources :recipes, only: [:index, :new, :create, :destroy ]
  resources :foods, only: [:index, :new, :create, :destroy ]
  #resources :recipes, only: [:index, :new, :create, :destroy ]
  resources :recipes do
    resources :recipe_foods
    resources :shoppinglist
  end
  get '/shoppinglist', to: 'shoppinglist#index' 
  
  devise_for :users

    devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end

  root to: "home#index"
end
