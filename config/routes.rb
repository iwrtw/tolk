Rails.application.routes.draw do
  namespace :tolk do
    resources :locales do
      get  :all
      post :updated
    end
    resource :search

    root :to => 'locales#index'
  end
end
