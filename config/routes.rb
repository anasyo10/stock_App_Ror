Rails.application.routes.draw do

  root 'pages#home'

  devise_for :users, :controllers => {:registrations => 'user/registrations'}

  get 'my_portfolio', to: 'users#my_portfolio'

  get 'search_stocks', to: 'stocks#search'
  resources :user_stocks, only: [:create, :destroy] 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
