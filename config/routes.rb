Rails.application.routes.draw do
  root to: 'welcome#index'
  post '/' => 'welcome#create'

  # get 'profile' => 'profile#index'
  resources :profile, only: [:index]

  namespace :api, format: 'json' do
    namespace :v1 do
      resources :votes, only: [:create]
    end
  end

end
