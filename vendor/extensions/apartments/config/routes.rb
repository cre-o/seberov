Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :apartments, path: '' do
    resources :apartments, :only => [:index, :show] do
      post 'apartments/application_form'
      collection { get :by_parameters }
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
