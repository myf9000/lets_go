Rails.application.routes.draw do
  root 'api/v1/events#index'

  namespace :api do
    namespace :v1 do
      resources :events, only: [:index, :show]
    end
  end
end
