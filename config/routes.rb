PasswordFamily::Application.routes.draw do

  get "product/index"

  get "home/index"
  root :to => 'product#index'


  resources :members,:rooms

end
