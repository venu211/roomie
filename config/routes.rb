Rails.application.routes.draw do
  root 'home#index'
  match 'auth/:provider/callback', to: 'sessions#create',  :via => [:get]
  get 'auth/failure', to: redirect('/')
  match 'signout',                 to: 'sessions#destroy', :via => [:get]

  resources :sessions, only: [:create, :destroy]
  get 'account', to: 'home#account'
  #resources :home, only: [:account]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
