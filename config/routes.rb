Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  devise_for :admins, skip: :all
  devise_scope :admin do
    get 'admins/sign_in' => 'admins/sessions#new', as: 'new_admin_session'
    post 'admins/sign_in' => 'admins/sessions#create', as: 'admin_session'
    delete 'admins/sign_out' => 'admins/sessions#destroy', as: 'destroy_admin_session'
  end


  namespace :admins do
    get 'requests/her_requests/:id' => 'requests#her_requests', as: 'her_requests'
    resources :requests, only: [:index, :show, :edit, :update] do
      collection do
        get 'search'
      end
    end
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

  devise_for :users, skip: [:sessions, :registrations, :passwords], controllers: {
    omniauth_callbacks: 'public/omniauth_callbacks'
  }
  devise_scope :user do
    get 'users/sign_up' => 'public/registrations#new', as: 'new_user_registration'
    post 'users' => 'public/registrations#create', as: 'user_registration'
    get 'users/sign_in' => 'public/sessions#new', as: 'new_user_session'
    post 'users/sign_in' => 'public/sessions#create', as: 'user_session'
    delete 'users/sign_out' => 'public/sessions#destroy', as: 'destroy_user_session'
    post 'users/guest_sign_in', to: 'public/sessions#guest_sign_in'
  end

end
