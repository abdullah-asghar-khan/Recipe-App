Rails.application.routes.draw do
  resources :foods, only: [:index, :new, :create, :destroy ]
  resources :users, only: [:index, :show, :new, :create, :destroy] 


  devise_for  :users,
              :path => '',
              :path_names => {  :sign_in =>       'login',
                                :sign_out =>      'logout',
                                :sign_up =>       '',
                                :registration =>  'register',
                                :edit =>          'edit',
                                :cancel =>        'cancel',
                                :confirmation =>  'verification'  }

end