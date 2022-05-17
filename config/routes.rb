Rails.application.routes.draw do
  resources :funcionariobeneficios
  resources :funcionarios
  resources :beneficios
  resources :clientes
  resources :projects
  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'home#index'
  get "ficha", to: "funcionariobeneficios#ficha"
  delete '/clientes/:id', to: 'clientes#delete'
end
