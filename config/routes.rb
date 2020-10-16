Rails.application.routes.draw do

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'static_pages#index'

  match '/index', to: "static_pages#index", via: :get
  match '/journals', to: "static_pages#journals", via: :get

  match '/program_overview', to: "static_pages#program_overview", via: :get
  match '/selection_process', to: "static_pages#selection_process", via: :get
  match '/costs_and_commitment', to: "static_pages#costs_and_commitment", via: :get
  match '/how_to_apply', to: "static_pages#how_to_apply", via: :get

  match '/counselor_description', to: "static_pages#counselor_description", via: :get

  match '/applicant_faq', to: "static_pages#applicant_faq", via: :get
  match '/accepted_faq', to: "static_pages#accepted_faq", via: :get
  match '/adult_faq', to: "static_pages#parent_faq", via: :get
  match '/important_dates', to: "static_pages#important_dates", via: :get

  match '/alumni/find_by_iu', to: "static_pages#find_by_iu", via: :get
  match '/alumni/filter_by_iu/:iu_number', to: "alums#filter_by_iu", via: :get

  # enable this only when you want the alumni file to be readable
  # match '/create_alumni', to: "alums#create_alumni", via: :get

  match '/alumni', to: "alums#index", via: :get

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
