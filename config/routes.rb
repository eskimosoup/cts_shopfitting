CtsShopfitting::Application.routes.draw do

  get "sitemap" => "application#sitemap"

  namespace :admin do
    manticore_resources :seo_entries do
      get 'rebuild_seo', :on => :collection
    end
  end



  

  namespace :admin do
    chronicler_resources :home_pages
  end

  namespace :admin do
    chronicler_resources :home_features
  end

  namespace :admin do
    chronicler_resources :home_banners
  end

  namespace :admin do manticore_resources :roles end

  namespace :admin do
    manticore_resources :team_members
    chronicler_resources :team_members
  end

  resources :team_members, :only => [:index]


  namespace :admin do manticore_resources :testimonials end

  resources :testimonials, :only => [:index]


  namespace :admin do
    chronicler_resources :awards
  end

  resources :awards, :only => [:index]


  namespace :admin do manticore_resources :case_studies end

  resources :case_studies, :only => [:index]


  namespace :admin do
    manticore_resources :clients do
      chronicler_resources :client_images
    end
  end

  resources :clients, :only => [:index]


  namespace :admin do
    manticore_resources :articles
    chronicler_resources :articles
  end

  resources :articles, :only => [:index, :show]


  namespace :admin do
    chronicler_resources :pages
  end

  resources :pages, :only => [:show]

  resources :contacts, :only => [:new, :create]
  
  get "services" => "application#services"
  get "about" => "application#about_us"
  get "galleries" => "galleries#index"
  root :to => "application#index"
  mount Manticore::Engine => "/admin"

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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
