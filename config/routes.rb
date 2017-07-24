Rails.application.routes.draw do
  resources :animals
  get 'search' => 'animals#search'
  get 'random' => 'animals#random'
end
