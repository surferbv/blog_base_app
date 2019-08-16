Rails.application.routes.draw do
  root 'welcome#index'
  resources :artilces
end