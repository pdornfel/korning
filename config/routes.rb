Korning::Application.routes.draw do

  resources :tests

  resources :employees, only: [:index, :show]
  resources :customers
  resources :sales
  resources :products


  # resources :employees, only: [:index, :show]
  # resources :sales, only: [:index, :show]

end
