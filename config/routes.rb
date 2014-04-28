Rails.application.routes.draw do

  root 'show#index'

  # match '/shows', to: "show/create", to: 'show#new', as: 'shows', via: [:post, :patch]

  match '/show/create', to: 'show#create', as: 'newshow', via: [:post, :patch]

  resources :show do
    get :get_episode, on: :collection
    get :get_actors, on: :collection
  end

  resources :fashion
  resources :episode
  resources :actor

  get 'update_all_show', to: 'show#update_show'

  resources :show do
    resources :actor
    resources :episode do
         resources :fashion
      
    end
  end

  #get '/home' => 'page#home'
  
  get '/show/:season_show/:season_num' => 'season#show', as: :season

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
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
