Rails.application.routes.draw do
  get 'errors/not_found'
  get 'errors/internal_server_error'
  devise_for :users, :controllers => { registrations: 'registrations' }
  root "pages#show", page: "home"

  resources :articles do
    resources :comments
  end

  resources :contacts, only: [:new, :create]

  get "/pages/:page" => "pages#show"
  get "pages/menu", :as => "menu_page"
  get "pages/about", :as => "about_page"
  get "contacts/new", :as => "contact_page"

  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
end
