Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  root 'welcome#welcome'

  resources :users, :posts

  post 'uploader/image', to: 'uploader#image'
end
