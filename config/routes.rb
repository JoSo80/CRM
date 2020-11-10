Rails.application.routes.draw do
  resources :customers, only: %i[index show]
end
