Rails.application.routes.draw do

  get 'users/show'
  get 'users/edit'
  devise_for :users
  root to: "homes#top"
  get 'homes/about',as: 'about'
  # get 'post_images/new'
  # get 'post_images/index'
  # get 'post_images/show'
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  resources :users, only: [:show, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
