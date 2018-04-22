Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'

  get 'main/index' => "main#index"
  get 'main/index2' => "main#index2"
  get 'main/mypage_student' => "main#mypage_student"
  get 'main/mypage_teacher' => "main#mypage_teacher"

  get 'main/teacher_account_edit_confirm' => "main#teacher_account_edit_confirm"
  get 'main/student_account_edit/:id' => "main#student_account_edit"
  get 'main/student_account/:id' => "main#student_account"
  get 'main/student_faq' => "main#student_faq"

  get 'lessons/:id/new' => "lessons#new"
  get 'lessons/reserve' => "lessons#reserve"
  post 'lessons/update_reserve' => "lessons#update_reserve"
   
  get    '/login' => 'sessions#new'
  post   '/login_student' => 'sessions#create_student'
  post   '/login_teacher' => 'sessions#create_teacher'
  delete '/logout' => 'sessions#destroy'

  post    'favorites/:id/create' => 'favorites#create'
  post    'favorites/:id/destroy' => 'favorites#destroy'
  
  resources :users
  get 'users/:id/edit' => 'users#edit'
  post   'users/new' => 'users#new'
  post   'users/create2' => 'users#create2'
  root   'users#top'

  resources :teachers
  get   'teachers_top' => 'teachers#top'
  post   'teachers/new' => 'teachers#new'
  
  
  resources :lessons
  get 'lessons/:id/reserve' => "lessons#reserve"
  post 'lessons/create' => "lessons#create"
  post 'lessons/cancel' => "lessons#cancel"
  
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