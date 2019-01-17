Rails.application.routes.draw do
	root 'voters#index'
  resources :voters
end
