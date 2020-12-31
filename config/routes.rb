Rails.application.routes.draw do
  root to: 'page#home'
  get '/about', to: 'page#about'
  get '/contact', to: 'page#contact'

  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: :portfolio_show
  resources :blogs

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
