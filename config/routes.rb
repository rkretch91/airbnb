Rails.application.routes.draw do
  root to: 'flats#index'

  # verb path, to: "controller#action", as: :prefix
  get '/flats/:id', to: 'flats#show', as: :flat
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
