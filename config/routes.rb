Rails.application.routes.draw do
  get '/chintais', to: 'chintais#index'
  resources :stations
  resources :chintais do
  end
end
