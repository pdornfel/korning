Korning::Application.routes.draw do

  resources :employees, :sales

  # resources :employees, only: [:index, :show]
  # resources :sales, only: [:index, :show]

end
