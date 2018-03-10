Rails.application.routes.draw do
 devise_for :users
 root 'tweets#index'              #ルートパスの設定
 resources :tweets                     #tweets_controllerに対してのresourcesメソッド
 resources :tweets do
    resources :comments, only: [:create]   #ネスとしたルーティング
 end
 resources :users, only: [:show]       #users_controllerに対してのresourcesメソッド
end