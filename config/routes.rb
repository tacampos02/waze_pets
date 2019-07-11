Rails.application.routes.draw do
  devise_for :users
  root 'welcome#home'
  resources :users
  resources :places do
    resources :comments
  end
end
