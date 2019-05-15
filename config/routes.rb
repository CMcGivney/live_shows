Rails.application.routes.draw do
  root "shows#index"

  get "/about", to: "static_shows#about"

  resources :shows
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
