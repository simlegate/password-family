PasswordFamily::Application.routes.draw do

  devise_for :users

  get "users/index"


  get "product/index"
  get "product/about"

  get "home/index"
  root :to => 'product#index'


  resources :members,:rooms
  match '/:anything', to: "application_with_exceptions#routing_error", as: :error, :constraints => {:anything => /.*/}
end
