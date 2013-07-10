RailsRouting::Application.routes.draw do

  resources :photos

  get '/about' => 'pages#show'

  get '/ships/:ship_id/pirates/:id' => 'pirates#show'

  get '/ships/new' => 'ships#new', as: :new_ship

  get '/ships/:id' => 'ships#show'

  get '/:name' => 'pirates#show'

  get '/fleets/:id' => 'ships#filtered'

  get '/parent_companies' => 'parent_companies#index', as: :parent_companies

  get '/parent_companies/:id/edit' => 'parent_companies#edit', as: :edit_parent_company

  get '/parent_companies/:id' => 'parent_companies#show', as: :parent_company

  get '/parent_companies/:parent_company_id/subsidiaries/:id' => 'subsidiaries#show', as: :parent_company_subsidiary

  get '/parent_companies/:parent_company_id' => 'subsidiaries#index', as: :parent_company_subsidiaries

  delete '/parent_companies/:parent_company_id/subsidiaries/:id' => 'subsidiaries#destroy'

  put  '/parent_companies/:parent_company_id/subsidiaries/:subsidiary_id/employees/:id' => 'employees#update'

  post '/parent_companies/:parent_company_id/subsidiaries/:subsidiary_id/employees' => 'employees#create'  

  post '/parent_companies/:parent_company_id/subsidiaries/:subsidiary_id/employees' => 'employees#new', as: :new_parent_company_subsidiary_employee

  get  '/parent_companies/:parent_company_id/subsidiaries/:subsidiary_id/employees' => 'employees#index', as: :parent_company_subsidiary_employees

  get  '/parent_companies/:id/employees' => 'parent_companies#show_employees'


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
