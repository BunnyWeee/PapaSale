Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'

  resources :users, :posts

  post 'uploader/image', to: 'uploader#image'
end
