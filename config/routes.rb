Rails.application.routes.draw do
  # devise_for :users, controllers: { sessions: 'users/sessions' }   
  devise_for :users, path: 'auth', path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', registration: 'register', sign_up: 'cmon_let_me_in' }
   
  devise_for :users, skip: :all

  get 'welcome/index'

  resources :articles

  resources :articles do
    resources :comments
  end

  root to: 'welcome#index'
  # root to: 'home#index'
 end
