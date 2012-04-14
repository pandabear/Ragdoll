Ragdoll::Application.routes.draw do
  resources :categories do
    resources :products
  end
  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"
end
