Rails.application.routes.draw do
  root 'charts#index'

  resources :artists do
    resources :songs
  end

  resources :charts do
    resources :songs
  end
end
