Rails.application.routes.draw do


  # Routes for the Review resource:
  # CREATE
  get "/reviews/new", :controller => "reviews", :action => "new"
  post "/create_review", :controller => "reviews", :action => "create"

  # READ
  get "/reviews", :controller => "reviews", :action => "index"
  get "/reviews/:id", :controller => "reviews", :action => "show"

  # UPDATE
  get "/reviews/:id/edit", :controller => "reviews", :action => "edit"
  post "/update_review/:id", :controller => "reviews", :action => "update"

  # DELETE
  get "/delete_review/:id", :controller => "reviews", :action => "destroy"
  #------------------------------

  # Routes for the Customer resource:
  devise_for :customers
  # SIGN UP
  get "customers/sign_up", :controller => "customers"

  # SIGN IN
  get "customers/sign_in", :controller => "customers"

  # CREATE
  get "/customers/new", :controller => "customers", :action => "new"
  post "/create_customer", :controller => "customers", :action => "create"

  # READ
  get "/customers", :controller => "customers", :action => "index"
  get "/customers/:id", :controller => "customers", :action => "show"

  # UPDATE
  get "/customers/:id/edit", :controller => "customers", :action => "edit"
  post "/update_customer/:id", :controller => "customers", :action => "update"

  # DELETE
  get "/delete_customer/:id", :controller => "customers", :action => "destroy"
  #------------------------------

  # Routes for the Service_provider resource:
  devise_for :service_providers
  # SIGN UP
  get "service_providers/sign_up", :controller => "service_providers"

  # SIGN IN
  get "service_providers/sign_in", :controller => "service_providers"

  # CREATE
  get "/service_providers/new", :controller => "service_providers", :action => "new"
  post "/create_service_provider", :controller => "service_providers", :action => "create"

  # # READ
  get "/service_providers", :controller => "service_providers", :action => "index"
  get "/service_providers/:id", :controller => "service_providers", :action => "show"
  get "/service_providers/:id/customer_review", :controller => "service_providers", :action => "customer_review"
  get "/service_providers/:id/service_provider_project", :controller => "service_providers", :action => "service_provider_project"

  # # UPDATE
  get "/service_providers/:id/edit", :controller => "service_providers", :action => "edit"
  post "/update_service_provider/:id", :controller => "service_providers", :action => "update"

  # # DELETE
  get "/delete_service_provider/:id", :controller => "service_providers", :action => "destroy"
  #------------------------------



  root 'reviews#index'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
