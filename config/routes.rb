Rails.application.routes.draw do
  root 'welcome#index'
  devise_for :users, :controllers => { :registrations => "users/registrations" }
#--管理员--
  namespace :admin do
    resources :orders do
     member do
       post :cancel
       post :ship
       post :shipped
       post :return
     end
   end
    resources :products do
      member do
        post :publish
        post :hide
        patch :move_up
        patch :move_down
      end
    end
  end

#--用户--
  resources :products do
    member do
      post :add_to_cart
      post :join
      post :quit
    end
    collection do
      get :search
    end
    resources :comments
  end

  namespace :account do
   resources :orders
   resources :products
 end

#--购物车--
  resources :carts do
    collection do
      delete :clean
      post :checkout
    end
  end

  resources :cart_items

#-- 订单 --
  resources :orders do
    member do
      post :pay_with_alipay
      post :pay_with_wechat
      post :apply_to_cancel
    end
  end


end
