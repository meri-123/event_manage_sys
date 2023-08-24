Rails.application.routes.draw do
  get 'pages/home'
  devise_for :adminns
  
  

  get 'managements/index'
  get 'managements/about'
  get 'managements/list'
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "managements#index"
    root "pages#home"
  resources :managements do
    resources :comments
  end
end
