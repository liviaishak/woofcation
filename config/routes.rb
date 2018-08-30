Rails.application.routes.draw do
  devise_for :members

  #nested routes
  resources :members do
    resources :profiles
  end
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
