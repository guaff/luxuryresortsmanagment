ActionController::Routing::Routes.draw do |map|
  map.resources :comments
  map.resources :peoples

  map.resources :blogs

  map.resources :clients

  map.resources :rooms
 
  map.resources :unit_sizes
 
  map.resources :resorts
 
  map.resources :mailinglists
 
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.register '/register', :controller => 'users', :action => 'create'
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.resources :users
  
  map.print '/print', :controller => 'clients', :action => 'print'
  map.credit_verifiction  '/credit_verification', :controller => 'clients', :action => 'credit_verification'
  map.search_client 'search_client', :controller => 'admin', :action => 'search_client'
  map.resource :session
  map.resources :cities
  map.resources :locations
  
  #
  # CUSTOM FETURE DRIVEN
  #
  map.home '', :controller => 'home', :action => 'index'
  map.search_city '/search_city', :controller => 'home', :action => 'search_city'
  map.express_interest '/express_interest', :controller => 'rooms', :action => 'express_interest'
  
  
  # OPTING IN AND OUT OF THE SERVICE
  
  map.optin '/optin', :controller => 'clients', :action => 'optin'
  map.optout '/optout', :controller => 'clients', :action => 'optout'
  
  # The priority is based upon order of creation: first created -> highest priority.
 
  # Sample of regular route:
  # map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action
 
  # Sample of named route:
  # map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)
 
  # Sample resource route (maps HTTP verbs to controller actions automatically):
  # map.resources :products
 
  # Sample resource route with options:
  # map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }
 
  # Sample resource route with sub-resources:
  # map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  # map.resources :products do |products|
  # products.resources :comments
  # products.resources :sales, :collection => { :recent => :get }
  # end
 
  # Sample resource route within a namespace:
  # map.namespace :admin do |admin|
  # # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  # admin.resources :products
  # end
 
  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
   map.root :controller => "home"
 
  # See how all your routes lay out with "rake routes"
 
  # Install the default routes as the lowest priority.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'

 
end