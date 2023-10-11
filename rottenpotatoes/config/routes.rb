Rails.application.routes.draw do
  resources :movies
 resources :movies
 root :to => redirect('/movies')
end