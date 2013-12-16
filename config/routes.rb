Korning::Application.routes.draw do

  resources :employees, :sales, :customers

  resources :products, only: [:index, :show]

  # resources :employees, only: [:index, :show]
  # resources :sales, only: [:index, :show]

end
