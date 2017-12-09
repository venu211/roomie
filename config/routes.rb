Rails.application.routes.draw do
  root 'home#index'
  match 'auth/:provider/callback', to: 'sessions#create', :via => [:get]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
