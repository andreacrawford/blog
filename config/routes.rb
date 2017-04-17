Rails.application.routes.draw do
    devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'register', to: 'devise/registrations#new', as: "new_user_registration"
    delete 'logout', to: 'devise/sessions#destroy'
  end

  devise_for :users
  resources :articles do 
    resources :comments
  end
  resources :users
  
  get 'static_pages/index'
  get 'static_pages/about'
  get 'static_pages/contact'
  post 'static_pages/thank_you'

  root 'static_pages#index'

end

