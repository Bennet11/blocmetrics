Rails.application.routes.draw do

  devise_for :users

  resources :registered_applications

  root to: 'welcome#index'

  get 'welcome/index'

  get 'welcome/about'
end
