Rails.application.routes.draw do
  # root 'exams#index'



  devise_for :users


  resource :user
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :exams, only: [:index, :show, :new, :create]
  # Defines the root path route ("/")
  # root "articles#index"

  # resources :users do
  #   member do
  #     get :exams
  #   end
  # end
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
end
