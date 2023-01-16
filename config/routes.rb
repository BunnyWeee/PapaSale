Rails.application.routes.draw do
  devise_for :users
  root 'welcome#welcome'

  resources :users, :posts

  post 'uploader/image', to: 'uploader#image'
end
