Rails.application.routes.draw do
  root 'poems#show'

  resources :poems, only: [:show]
end
