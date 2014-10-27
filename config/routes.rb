Ankur::Application.routes.draw do
get    'signup'  => 'users#new'
get    'login'   => 'sessions#new'
post   'login'   => 'sessions#create'
delete 'logout'  => 'sessions#destroy'
get 'logout'  => 'sessions#destroy'
#resources :sessions
root :to => "users#index"
  #get "documents/index"
resources :documents
get 'users/ask'
post 'users/ask' => 'users#savequestion'
get 'users/show_question'
#get 'users/give_answer' 
get 'users/:id/give_answer' => 'users#give_answer' , :as => 'users_give_answer'
get 'users/:id/show_answer' => 'users#show_answer' , :as => 'users_show_answer'
post 'users/:id/give_answer' => 'users#post_answer'
get 'users/:id/vote_me' => 'users#vote_me' , :as => 'users_vote_me'





post 'users/show_question' => 'users#savequestion'
#match 'users#give_answer',  :to => 'users/:id/give_answer'
#get "document/index"
#get "document/edit"
#get "document/new"
#get "document/show"
#post "document/create"
  resources :users

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
  # match ':controller(/:action(/:id(.:format)))'
end
