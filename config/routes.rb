Rails.application.routes.draw do
  resources :animals
  get 'search' => 'animals#search'
end
