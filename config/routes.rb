Rails.application.routes.draw do
    

  resources :metatags

  resources :media_pics

  mount Ckeditor::Engine => '/ckeditor'
  resources :news

  get '/admin', to:'admin#index'

  resources :user_sessions
  resources :users

  get 'login' => 'user_sessions#new', :as => :login
  match '/create', to: 'user_sessions#create', via: 'post'
  post 'logout' => 'user_sessions#destroy', :as => :logout

  

  resources :events

  get '/missives', to: 'missives#index'

  
  
  
  
  root 'welcome#index'
 resources :contact, only: [:new, :create]
 get '/contact', to: 'contact#new'
 resources :support, only: [:new, :create]
 get '/support', to: 'support#new'
 
 
  match '/send_mail', to: 'contact#send_mail', via: 'post'
  match '/send_support_mail', to: 'support#send_support_mail', via: 'post'
  
  
  get '/about', to: 'about#index'
  get '/endorsements', to: 'endorsements#index'
  get '/support', to: 'support#index'
  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
     resources :endorsements

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
