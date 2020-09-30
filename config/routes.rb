Rails.application.routes.draw do
  
  root 'pages#index'

  namespace :api do
    namespace :v1 do
      resources :resorts, param: :slug
      resources :reviews, only: %i[create destroy]
    end
  end

  # route requests that are not for existing paths predefined in our api back to our index path (will handle routing to our react components without interfering with rails routes for our api)
  get '*path', to: 'pages#index', via: :all
end

# specifying param: :slug for the resorts resources allows us to use the slug value that we created instead of using the id