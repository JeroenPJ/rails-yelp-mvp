Rails.application.routes.draw do
  root 'restaurants#index'
  resources :restaurants do
    resources :reviews
    # post '/restaurants/:restaurant_id/reviews', to: 'reviews#create', as: :reviews
  end
end
