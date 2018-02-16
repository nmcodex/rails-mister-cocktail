Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'cocktails#index'

  resources :cocktails, only: [ :show, :new, :create] do
    resources :doses, only: [:create]
  end
  resources :doses, only: [:destroy]
  # post "cocktails/:id/doses", to: "doses#create", as: "cocktail_doses"
  # delete "doses/:id", to: "doses#destroy", as: "dose"
end
