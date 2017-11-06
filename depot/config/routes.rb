Rails.application.routes.draw do
  resources :users
	resources :orders
	resources :line_items
	resources :line_items do
		member do
			put 'decrement'
		end
	end	

	resources :products do
		get :who_bought, :on => :member
	end

	resources :carts
	get 'store/index'

	resources :products
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  	root :to => 'store#index', :as => 'store'
  end
