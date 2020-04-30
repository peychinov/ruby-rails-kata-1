Rails.application.routes.draw do
  resources :authors do
    collection do
      post :import
    end
  end
  resources :publications do
    collection do
      get :search
      post :import
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
