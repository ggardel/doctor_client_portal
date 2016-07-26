Rails.application.routes.draw do
#resources :users

#routes

#index action "patient list"
  get 'admin/index' => "admin#index"


#new action
  get 'admin/new' => "admin#new", as: :patient_infos

  get 'admin/new_medical' => "admin#new_medical_hist", as: :medical_histories

  get 'admin/new_physical' => "admin#new_physical_exam", as: :physical_exams

  get 'admin/new_notes' => "admin#new_note", as: :notes


#Create action

  post 'admin/new'  => "admin#create"
  post 'admin/new_medical'  => "admin#create_medical_hist"
  post 'admin/new_physical'  => "admin#create_physical_exam"
  post 'admin/new_notes'  => "admin#create_note"


#Show action
  get 'admin/:user_id' => "admin#show", as: :show_user


#Edit action
  get 'admin/edit'

  get 'admin/update'

  get 'admin/destroy'

#Users devise
  devise_for :users
  get 'welcome/index'

  root to: "welcome#index"
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
