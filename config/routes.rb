Qpon::Application.routes.draw do

  devise_for :consortia
  devise_for :users
  devise_for :admins
  root "coupons#index"

  resources :coupons

  #CouponTypes
  get "coupon_types/index" => "coupon_types#index", as: :index_coupon_type
  post "coupon_types/update" => "coupon_types#update", as: :update_coupon_type
  post "coupon_types/create" => "coupon_types#create", as: :create_coupon_type
  get "coupon_types/destroy/:id" => "coupon_types#destroy", as: :destroy_coupon_type

  #CouponStates
  get "coupon_states/index" => "coupon_states#index", as: :index_coupon_state
  post "coupon_states/update" => "coupon_states#update", as: :update_coupon_state
  post "coupon_states/create" => "coupon_states#create", as: :create_coupon_state
  get "coupon_states/destroy/:id" => "coupon_states#destroy", as: :destroy_coupon_state

  #CouponTypes
  get "store_types/index" => "store_types#index", as: :index_store_type
  post "store_types/update" => "store_types#update", as: :update_store_type
  post "store_types/create" => "store_types#create", as: :create_store_type
  get "store_types/destroy/:id" => "store_types#destroy", as: :destroy_store_type

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
