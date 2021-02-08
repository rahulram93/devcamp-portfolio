Rails.application.routes.draw do
  devise_for :users, path: '', path_names: {sign_in: 'login', sign_up: 'register', sign_out: 'logout'}
  root to: 'page#home'
  get '/about', to: 'page#about'
  get '/contact', to: 'page#contact'

  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: :portfolio_show
  resources :blogs do
    member do 
      post :toggle_status
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
