Spree::Core::Engine.add_routes do
  namespace :admin, path: Spree.admin_path do
    
    get '/facebook_catalog', controller: 'products', action: 'catalog'

    # resources :facebook_catalog
  end
end
