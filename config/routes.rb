Rails.application.routes.draw do

  get '/dashboard',to: 'dashboard#index'

  resources :issue_statuses
  
  resources :projects do
    resources :issues
  end
  get 'home',to: 'home#index'

  root 'home#index'

  devise_for :users, :path => '', 
  :path_names => {
    :sign_in => 'sign_in', 
    :sign_out => 'sign_out', 
    :sign_up => 'sign_up'}
end
