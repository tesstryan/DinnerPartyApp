DinnerPartyApp::Application.routes.draw do

  # Routes for the home page (pages):
  root 'pages#index'

  # Routes for the Guest resource:
  # CREATE
  get '/guests/new', controller: 'guests', action: 'new', :as => 'new_guest'
  post '/guests', controller: 'guests', action: 'create'

  # READ
  get '/guests', controller: 'guests', action: 'index'
  get '/guests/:id', controller: 'guests', action: 'show', :as => 'guest'

  # UPDATE
  get '/guests/:id/edit', controller: 'guests', action: 'edit', :as => 'edit_guest'
  patch '/guests/:id', controller: 'guests', action: 'update'

  # DELETE
  delete '/guests/:id', controller: 'guests', action: 'destroy'
  #------------------------------

  # Routes for the Attendee resource:
  # CREATE
  get '/attendees/new', controller: 'attendees', action: 'new', :as => 'new_attendee'
  post '/attendees', controller: 'attendees', action: 'create'

  # READ
  get '/attendees', controller: 'attendees', action: 'index'
  get '/attendees/:id', controller: 'attendees', action: 'show', :as => 'attendee'

  # UPDATE
  get '/attendees/:id/edit', controller: 'attendees', action: 'edit', :as => 'edit_attendee'
  patch '/attendees/:id', controller: 'attendees', action: 'update'

  # DELETE
  delete '/attendees/:id', controller: 'attendees', action: 'destroy'
  #------------------------------

  # Routes for the Dinner resource:
  # CREATE
  get '/dinners/new', controller: 'dinners', action: 'new', :as => 'new_dinner'
  post '/dinners', controller: 'dinners', action: 'create'

  # READ
  get '/dinners', controller: 'dinners', action: 'index'
  get '/dinners/:id', controller: 'dinners', action: 'show', :as => 'dinner'

  # UPDATE
  get '/dinners/:id/edit', controller: 'dinners', action: 'edit', :as => 'edit_dinner'
  patch '/dinners/:id', controller: 'dinners', action: 'update'

  # DELETE
  delete '/dinners/:id', controller: 'dinners', action: 'destroy'
  #------------------------------

  # Routes for the Chef resource:
  # CREATE
  get '/chefs/new', controller: 'chefs', action: 'new', :as => 'new_chef'
  post '/chefs', controller: 'chefs', action: 'create'

  # READ
  get '/chefs', controller: 'chefs', action: 'index'
  get '/chefs/:id', controller: 'chefs', action: 'show', :as => 'chef'

  # UPDATE
  get '/chefs/:id/edit', controller: 'chefs', action: 'edit', :as => 'edit_chef'
  patch '/chefs/:id', controller: 'chefs', action: 'update'

  # DELETE
  delete '/chefs/:id', controller: 'chefs', action: 'destroy'
  #------------------------------

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
