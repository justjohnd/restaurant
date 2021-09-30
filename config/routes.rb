Rails.application.routes.draw do
  root "pages#show", page: "home"

  resources :articles do
    resources :comments
  end

  get "/pages/:page" => "pages#show"
end
