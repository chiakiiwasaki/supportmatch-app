Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'
  }

  namespace :admins do
    get 'requests/her_requests/:id' => 'requests#her_requests', as: 'her_requests'
    resources :requests, only: [:index, :show, :edit, :update]
    get 'posts/her_posts/:id' => 'posts#her_posts', as: 'her_posts'
    resources :posts, only: [:index, :show, :update] do
      resources :post_comments, only: [:update]
    end
    get 'users/:id/rooms' => 'rooms#index', as: 'her_rooms'
    get 'users/:id/rooms/:id' => 'rooms#show', as: 'her_room'
    resources :users, only: [:index, :show, :edit, :update] do
      get 'followings' => 'relationships#followings', as: 'followings'
      get 'followers' => 'relationships#followers', as: 'followers'
    end
  end

  scope module: :public do
    root 'homes#top'
    get '/about' => 'homes#about'
    get '/result' => 'homes#result'
    get '/privacy_policy' => 'homes#privacy'
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
    get 'requests/her_requests/:id' => 'requests#her_requests', as: 'her_requests'
    resources :requests, only: [:new, :create, :index, :show, :edit, :update, :destroy] do
      collection do
        get 'search'
      end
    end
    get 'posts/her_posts/:id' => 'posts#her_posts', as: 'her_posts'
    resources :posts, only: [:new, :create, :index, :show, :destroy] do
      resources :post_comments, only: [:create, :destroy]
      resource :favorites, only: [:create, :destroy]
    end
  end

  devise_for :users, controllers: {
    sessions: 'public/sessions',
    # passwords: 'public/passwords',
    registrations: 'public/registrations',
    omniauth_callbacks: 'public/omniauth_callbacks'
  }

  devise_scope :user do
    post 'users/guest_sign_in', to: 'public/sessions#guest_sign_in'
  end

end
