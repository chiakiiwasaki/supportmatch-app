Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :admin do
    resources :requests, only: [:index, :show, :edit, :update]
    resources :posts, only: [:index, :show, :update]
    resources :users, only: [:index, :show, :edit, :update]
  end

  scope module: :public do
    root 'homes#top'
    get '/about' => 'homes#about'
    get '/result' => 'homes#result'

    resources :users, only: [:edit, :update]
    get 'users/my_page' => 'users#show'
    get 'users/unsubscribe' => 'users#unsubscribe'
    patch 'users/withdraw' => 'users#withdraw'

    resources :contacts, only: [:new, :create]
    resources :rooms, only: [:create, :show]
    resources :messages, only: [:create]
    resources :requests, only: [:new, :create, :index, :show, :update]
    resources :posts, only: [:new, :create, :index, :show]
    # resources :post_comments, only: [:create, :destroy]
    # resources :favorites, only: [:create, :destroy]
    resources :relationships, only: [:create, :destroy]
  end
end
