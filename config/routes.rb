Rails.application.routes.draw do
  get 'backups/create'
  get 'backups/purge'
  get 'backups/search'
  get 'backups/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :backups
  
  root 'backups#index'
end
