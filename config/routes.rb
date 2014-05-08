ThemePark::Application.routes.draw do |map|
  resources :fastpasses

  resources :customers

  resources :attractions

  resources :amber_alerts

  get "main/index"
  
  get "event/index"
  
  get 'view_attractions' => 'view_attractions#index'
  
  get 'view_events' => 'view_events#index'

  get 'view_amber_alerts' => 'view_amber_alerts#index'

  get 'view_park_info' => 'view_park_info#index'
  
  get 'view_fastpasses' => 'view_fastpasses#index'
  
  get 'submit_fast_pass' => 'submit_fast_pass#index'
  
  get 'cust_fastpass' => 'cust_fastpass#index'
  
  get 'att_fastpass' => 'att_fastpass#index'
  
  controller :sessions do
    get 'login_admin' => :new
    post 'login_admin' => :create
    delete 'logout_admin' => :destroy
  end
  
  controller :sessions_cust do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end

  resources :users

  resources :events
  
  map.connect 'submit_fast_pass/avail_times', :controller => 'submit_fast_pass', :action => 'avail_times'
  
  map.connect 'submit_fast_pass/add_pass', :controller => 'submit_fast_pass', :action => 'add_pass'
  
  map.connect 'fastpasses/use', :controller => 'fastpasses', :action => 'use'
  

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"
  root :to => 'main#index', :as => 'main'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
