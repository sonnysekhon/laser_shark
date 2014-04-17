LaserShark::Application.routes.draw do

  root to: 'home#show'

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/auth/github', as: 'github_session'

  resource :registration, only: [:new, :create]

  

  namespace :admin do
    root to: 'dashboard#show'
    get 'students', :to => 'students#index', :as => :students
  end



end
