Rails.application.routes.draw do
  resources :projects do
    resources :tasks
  end
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  match '*unmatched', to: 'application#route_not_found', via: :all
  # Defines the root path route ("/")
  root "projects#index"
end
