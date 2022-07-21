Rails.application.routes.draw do

  devise_for :customers,skip: [:passwords], controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
}
  devise_for :admins, skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}


  # scope module: :public do
  #   # root 'items#top'
  #   resources :items, only: [:show, :index]
  #   get 'about' => 'items#about'
  # end

end
