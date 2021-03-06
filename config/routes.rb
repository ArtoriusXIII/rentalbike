Rails.application.routes.draw do
  get 'welcome/index'
  #get "about" => "welcome#about"
  get 'welcome/about'
  get 'welcome/contact'

  #get "contact" => "welcome#contact"

  get 'welcome/gallery'

  #get "blog" => "welcome#blog"
  get 'welcome/blog'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :products

  resource :cart, only: [ :show ] do
    post "add", path: "add/:id"
    get :checkout
  end
  resources :orders, only: [:index, :show, :create]
  resources :users

  root 'welcome#index'

  get 'product/orders'
  

end
