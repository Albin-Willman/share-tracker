Rails.application.routes.draw do
  root to: 'stocks#index'

  resources :stocks, except: [:edit, :update] do
    collection do
      get 'compare_stocks'
    end
  end

  namespace :api do
    namespace :sessions do
      get 'login'
    end
    resources :stocks, only: [:index, :show, :create, :destroy]
  end
end
