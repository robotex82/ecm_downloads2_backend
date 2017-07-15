Ecm::Downloads::Backend::Engine.routes.draw do
  backend_resources :download_categories
  backend_resources :downloads do
    member { get :download }
    member { post :toggle_published }
  end

  root to: 'home#index'
end
