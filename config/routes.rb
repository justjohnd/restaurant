Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root "pages#show", page: "home"

  resources :articles do
    resources :comments
  end

  get "/pages/:page" => "pages#show"
end
