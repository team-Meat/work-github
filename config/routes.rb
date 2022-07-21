Rails.application.routes.draw do





 devise_for :customers,skip: [:passwords], controllers: {
   registrations: "public/registrations",
   sessions: 'public/sessions'
 }

  devise_for :admins, skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"
}


  get 'top' => 'public/homes#top'
  get 'public/customers/show'
  get 'public/customers/edit'
  get 'public/customers/update'
  get 'public/customers/confirm'
  get 'public/customers/withdraw'
  get 'public/homes/about'
end
