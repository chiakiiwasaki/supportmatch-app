Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'
  }

  namespace :admins do
    resources :requests, only: [:index, :show, :edit, :update]
    resources :posts, only: [:index, :show, :update] do
      resources :post_comments, only: [:update]
    end
    resources :users, only: [:index, :show, :edit, :update]
  end

  scope module: :public do
    root 'homes#top'
    get '/about' => 'homes#about'
    get '/result' => 'homes#result'
    get 'users/my_page' => 'users#show'
    get 'users/unsubscribe' => 'users#unsubscribe'
    patch 'users/withdraw' => 'users#withdraw'
    resources :users, only: [:edit, :update] do
      resources :relationships, only: [:create, :destroy]
      get 'followings' => 'relationships#followings', as: 'followings'
      get 'followers' => 'relationships#followers', as: 'followers'
    end

    get 'contact' => 'contacts#new'
    post 'contact/confirm' => 'contacts#confirm'
    post 'contact/thanks' => 'contacts#thanks'

    resources :rooms, only: [:create, :show, :index]
    resources :messages, only: [:create]
    get 'requests/my_requests' => 'requests#my_requests'
    resources :requests, only: [:new, :create, :index, :show, :edit, :update]
    resources :posts, only: [:new, :create, :index, :show, :destroy] do
      resources :post_comments, only: [:create, :destroy]
      resource :favorites, only: [:create, :destroy]
    end
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations',
    omniauth_callbacks: 'public/omniauth_callbacks'
  }
end
