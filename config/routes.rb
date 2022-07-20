Rails.application.routes.draw do
  
  devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}
  devise_for :admins, skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}

#cart_items
scope module: :public do
  resources :cart_items, only: [:index, :update, :destroy, :destroy_all, :sreate]
  resources :sessions, only: [:new, :create, :destroy]
end
# get 'top' => 'public/homes'
# get 'public/cart_items/index'
# patch 'public/cart_items/update'
# delete 'public/cart_items/destroy'
# delete 'public/cart_items/destroy_all'
# post 'public/cart_items/create'
# get 'public/home/about'

#sessions
# get 'public/sessions/new'
# post 'public/sessions/create'
# delete 'public/sessions/destroy'

end
