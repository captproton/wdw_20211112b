Rails.application.routes.draw do
  resources :todos
  resources :favorites
  resources :favorites_lists
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
