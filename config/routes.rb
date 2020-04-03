Rails.application.routes.draw do
  devise_for :users, controllers: {sessions: 'users/sessions', registrations: 'users/registrations'}
  root "items#index"
  resources :items, only: [:index, :show, :new, :create] do
    resources :purchase, only: [:index, :create] do
      collection do
        post 'pay'
        get 'purchased'
      end
    end
  end
  resources :images, only: [:index]
  resources :users, only: [:new]
  resources :addresses, only: [:new, :create, :show, :edit, :update]
end
