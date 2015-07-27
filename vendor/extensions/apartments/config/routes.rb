Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :apartments, path: '' do
    resources :apartments, :only => [:index, :show] do

      # Search
      collection do
        get 'by-parameters', to: :by_parameters
        get 'by-price-list', to: :by_price_list
        get 'price-list', to: :price_list
        post :search
        post :application
        post :mortgage
      end
    end
  end

  # Admin routes
  namespace :apartments, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :apartments, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end
end
