Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: "users/sessions" }

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  get 'home/index'
  get 'home/list'
  get 'user/join'

  get 'consulting/c_list'
  get 'consulting/c_write'
  get 'consulting/c_info/:id' => "consulting#c_info"

  post 'consulting/c_handout'

  get 'profile/conp_write'
  get 'profile/cusp_write'
  post 'profile/conp_handout'
  post 'profile/cusp_handout'



  # 회원가입 기능 구현
  # resources :users
  # post 'user/join_path'

  # 로그인 & 로그아운
  # post 'user/login_path'
  # get 'user/login'
  # get 'user/logout'


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
