Psqlproj::Application.routes.draw do
  
  resources :hotels do
    collection do 
      get :search
      get :search_result
    end
  end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
   root :to => 'hotels#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end