Rails.application.routes.draw do

  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    passwords: 'admins/passwords',
    registrations: 'admins/registrations'
  }

  namespace :admins do
    resources :requests, only: [:index, :show, :edit, :update]
    resources :posts, only: [:index, :show, :update]
    resources :users, only: [:index, :show, :edit, :update]
  end

  scope module: :public do
    root 'homes#top'
    get '/about' => 'homes#about'
    get '/result' => 'homes#result'

    get 'users/my_page' => 'users#show'
    get 'users/edit' => 'users#edit'
    patch 'users/edit' => 'users#update'
    get 'users/unsubscribe' => 'users#unsubscribe'
    patch 'users/withdraw' => 'users#withdraw'

    resources :contacts, only: [:new, :create]
    resources :rooms, only: [:create, :show, :index]
    resources :messages, only: [:create]
    resources :requests, only: [:new, :create, :index, :show, :update]
    resources :posts, only: [:new, :create, :index, :show, :destroy] do
      resources :post_comments, only: [:create, :destroy]
      resource :favorites, only: [:create, :destroy]
    end
    resources :relationships, only: [:create, :destroy]
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }

end
