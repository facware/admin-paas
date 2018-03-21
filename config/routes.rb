Rails.application.routes.draw do

  devise_for :accounts, controllers: { confirmations: 'confirmations' }
  authenticated :accounts do
  	root :to => 'panel#index'
  end	
  root to: 'landing#index'
  get 'landing', to: 'landing#index'
  get 'home', to: 'home#index'
  get 'minor', to: 'panel#minor'
  get 'panel', to: 'panel#index', as: 'panel'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
