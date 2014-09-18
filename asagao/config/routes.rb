Asagao::Application.routes.draw do
	root to: "top#index"
	get "about" => "top#about", as: "about"
	get "lesson/:action(/:name)" => "lesson"
	namespace :admin do
		root to: "top#index"
		resources :members do
			collection{ get "search" }
		end
		resources :articles
	end
	resources :articles
	resource :session, only: [:create, :destroy]
		resources :members do
			collection { get "search" }

			resources :entries, only: [:index]
		end
	resources :members, only: [:index, :show] do
		collection{ get "search" }
	end
	resources :articles, only: [:index, :show]
	resource :account, only: [:show, :edit, :update]
	match "anything" => "top#not_found"
	resources :entries do
		member{ put "like", "unlike" }
		collection {get "voted"}
	end
end
