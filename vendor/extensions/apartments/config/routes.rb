Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :apartments do
    resources :apartments, :path => '', :only => [:index, :show]
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
