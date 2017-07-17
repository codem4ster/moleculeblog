Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'site#index'

  mount Molecule::Engine, at: '/molecule'
  get '/(*others)', to: 'molecule#spa'
end
