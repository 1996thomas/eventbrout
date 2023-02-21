Rails.application.routes.draw do
  root 'events#index'
  devise_for :users
  resources :users, only:[:show]
  resources :events
  get 'static_pages/secret'
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
