Rails.application.routes.draw do
  authenticated :admin_user do
    root :to => "admin#index", as: :admin_root
  end
#Admin controller routes

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

#Guest Controller show routes
  get 'guest/:user_id/show_patient_info' => "guest#show_patient_info", as: :show_patient
  get 'guest/:user_id/show_medical_hist' => "guest#show_medical_hist", as: :show_medical
  get 'guest/:user_id/show_physical_exam' => "guest#show_physical_exam", as: :show_physical
  get 'guest/:user_id/show_note' => "guest#show_note", as: :show_note

#
#Edit action
  get 'admin/:user_id/edit' => "admin#edit", as: :edit_patient
  get 'admin/:user_id/edit_medical' => "admin#edit_medical_hist", as: :edit_medical
  get 'admin/:user_id/edit_physical' => "admin#edit_physical_exam", as: :edit_physical
  get 'admin/:user_id/edit_note' => "admin#edit_note", as: :edit_note


#Update action

  patch 'admin/:user_id/update' => "admin#update"
  patch 'admin/:user_id/update_medical' => "admin#update_medical_hist"
  patch 'admin/:user_id/update_physical' => "admin#update_physical_exam"
  patch 'admin/:user_id/update_note' => "admin#update_note"

#destroy action
  delete 'admin/:id'  => "admin#destroy", as: :delete

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
