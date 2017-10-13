Rails.application.routes.draw do
  devise_for :users
	root 'report#index'
	resources :report

	namespace :admin do
		resources :report
		root 'report#index'
	end
	
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
