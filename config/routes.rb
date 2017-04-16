Rails.application.routes.draw do
  get 'static_pages/index'
  get 'static_pages/about'
  get 'static_pages/contact'
  post 'static_pages/thank_you'

  root 'static_pages#index'

  resources :articles

end

