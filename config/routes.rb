Rails.application.routes.draw do
  # mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
  get 'pagetests/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
