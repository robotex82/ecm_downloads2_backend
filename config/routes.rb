Ecm::Downloads::Backend::Engine.routes.draw do
  resources :download_categories
  resources :downloads do
    member { get :download }
  end

  root to: 'home#index'
end