Rails.application.routes.draw do
  resources :tweets
  ActiveAdmin.routes(self)
  devise_for :users
  as :user do
  	get "signin" => 'devise/sessions#new'
  	delete "signout" => 'devise/sessions#destroy'
  	get "signup" => 'devise/registrations#new'
  end
  
  root 'pages#home'
  get	'about' =>	'pages#about'
  get	'lets-chat'	=> 'pages#lets-chat'
end
