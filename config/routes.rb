Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails
  resources :cocktails do
  	resources :doses, only: [ :new, :create, :delete ]
  	#resources :doses, only: [ :new, :create ]
  end	
end
