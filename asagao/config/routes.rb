Asagao::Application.routes.draw do
root to: "top#index"
get "about" => "top#about", as: "about"
get "lesson/:action(/:name)" => "lesson"
resources :articles
resource :session, only: [:create, :destroy]
	resources :members do
		collection { get "search" }
	end
end
