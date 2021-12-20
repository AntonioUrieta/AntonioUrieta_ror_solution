Rails.application.routes.draw do
  resources :info_personals
  devise_for :users
  root "main#home"
end
