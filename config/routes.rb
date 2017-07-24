Rails.application.routes.draw do
  concern :api_base do
    resources :animals
    get 'search' => 'animals#search'
    get 'random' => 'animals#random'
  end

  namespace :v1 do
    concerns :api_base
  end
end
