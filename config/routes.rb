Rails.application.routes.draw do

  root 'links#new'
  post 'links/create', to: 'links#create', as: 'create'
  resources :links
  get 'rauan/:id', to: 'links#redirect'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
