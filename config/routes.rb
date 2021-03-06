Rails.application.routes.draw do
  root 'home#index'

  resources :tracked_times, only: [:index, :show, :create, :update, :destroy] do
    collection do
      get :current
      put :stop
    end
  end
end
