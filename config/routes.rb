Rails.application.routes.draw do
  devise_for :users
  get 'hello/index'
  post 'got-leaf', to: 'hello#got_leaf'
  root 'hello#index'
end
