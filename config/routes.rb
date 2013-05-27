PasswordFamily::Application.routes.draw do

  devise_for :models

  get "product/index"

  get "home/index"
  root :to => 'product#index'


  resources :members,:rooms

end
