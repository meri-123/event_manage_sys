Rails.application.routes.draw do
  get 'managements/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "managements#index"
  resources :managements do
    resources :comments
  end
end
