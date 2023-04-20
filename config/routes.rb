Rails.application.routes.draw do
  
  devise_for :users
  root to: "homes#top"
  
  get 'books/new'
  get 'books/index'
  get 'books/show'
  get 'books/edit'
  
  get 'users/show'
  get 'users/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
