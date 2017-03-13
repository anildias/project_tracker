Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "dashboard#index"
  devise_for :users, controllers: { sessions: 'sessions' }

  resources :projects do
  	resources :issues
  end
end
