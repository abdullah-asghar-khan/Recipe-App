# frozen_string_literal: true

Rails.application.routes.draw do
   resources :recipes, only: [:index, :new, :create, :destroy ]
   resources :foods, only: [:index, :new, :create, :destroy ]
   resources :users, only: [:index, :show, :new, :create, :destroy] 

  devise_scope :user do
    root "devise/sessions#new"
  end  
  
  devise_for  :users,
              :path => '',
              :path_names => {  :sign_in =>       'login',
                                :sign_out =>      'logout',
                                :sign_up =>       '',
                                :registration =>  'register',
                                :edit =>          'edit',
                                :cancel =>        'cancel',
                                :confirmation =>  'verification'  }
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

end
