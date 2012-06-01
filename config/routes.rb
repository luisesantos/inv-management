InventoryManagement::Application.routes.draw do
  resources :work_orders

  resources :receiving_orders

  resources :pricing_rules

  resources :rma_orders

  resources :shipping_orders

  resources :packages

  resources :pick_orders

  resources :customers

  resources :carriers

  resources :business_processes

  resources :accounts

  resources :posticks

  resources :vendor_materials

  resources :addresses

  resources :vendors

  resources :fields_groups

  resources :documented_materials

  resources :product_groups

  resources :material_groups

  resources :employee_groups

  resources :schema_groups

  resources :application_users

  resources :user_groups

  resources :rols

  resources :activities

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'

  devise_for :users

  resources :located_materials

  resources :manufacture_orders

  resources :transfer_orders

  resources :consignment_orders

  resources :purchase_orders

  resources :sales_orders

  resources :schema_fields

  resources :schema_items

  resources :schemas

  resources :groups

  resources :employees

  resources :users

  resources :documents

  resources :materials

  resources :products

  resources :locations

  resources :warehouses

  resources :companies

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
  root :to => 'companies#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
