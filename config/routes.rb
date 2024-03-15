Rails.application.routes.draw do
  root 'welcome#index'
  
  resources :welcome, only: :index
  resources :articles do
    collection do
      get :search
    end
  end

  resources :vinyls
end
