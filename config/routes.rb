Rails.application.routes.draw do
  resources :landings
  resources :bolnices
  devise_for :users
  resources :mapatestiranjas
  resources :testiranjes
  resources :vakcinisanjes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'landings#index'
end
