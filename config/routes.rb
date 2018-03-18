Rails.application.routes.draw do
  get 'teacher/index'

  get 'student/index'

  get 'teacher/index'

  get 'password_resets/new'
  get 'password_resets/edit'

  get 'sessions/new'

  # get 'main/index/:id' => "main#index"
  get 'main/index' => "main#index"
  
  get 'main/mypage_student' => "main#mypage_student"
  #get 'main/student_profile_edit' => "main#student_profile_edit"
  #get 'main/student_profile_edit_confirm' => "main#student_profile_edit_confirm"


  #get 'main/teacher_profile_edit' => "main#teacher_profile_edit"
  #get 'main/teacher_profile_edit_confirm' => "main#teacher_profile_edit_confirm"
  #get 'main/teacher_account_edit' => "main#teacher_account_edit"
  #get 'main/teacher_account_edit_confirm' => "main#teacher_account_edit_confirm"
  get 'main/student_account_edit/:id' => "main#student_account_edit"
  get 'main/student_account/:id' => "main#student_account"
  #get 'main/teacher_faq' => "main#teacher_faq"
  get 'main/student_faq' => "main#student_faq"
  #get 'main/student_write_review' => "main#student_write_review" 
  #get 'main/student_write_review_confirm' => "main#student_write_review_confirm" 


  
  # post 'login' => "users#login"
  # get 'logout' => 'users#logout'
  
  get    '/login' => 'sessions#new'
  post   '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  resources :users
  post   'users/new' => 'users#new'
  root   'users#top'

  resources :teachers
  post   'teachers/new' => 'teachers#new'


  # get 'user/edit_info' => "users#edit_info"
  # get 'user/new' => 'users#new'
  # get 'user/top' => "users#top"
  # post 'user/pre_login' => "users#pre_login"
  # post 'user/account_edit/:id' => 'users#account_edit'
  
  
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