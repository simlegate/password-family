PasswordFamily::Application.routes.draw do

  devise_for :users

  get "users/index"


  get "product/index"

  get "home/index"
  root :to => 'product#index'


  resources :members,:rooms

end
