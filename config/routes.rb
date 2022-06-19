Rails.application.routes.draw do
  resources :coupons
  resources :books do
  member do 
      get :apply_coupon
    end
  end
end
