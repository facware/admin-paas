Rails.application.routes.draw do

  devise_for :accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'panel#index'
  get 'landing', to: 'landing#index'
  get 'home', to: 'home#index'
  get 'minor', to: 'panel#minor'
end
