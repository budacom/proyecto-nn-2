Rails.application.routes.draw do
  get "/error", to: "error_landing#index"
  get "/landing", to: "landing#index"
  get "/", to: "landing#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
