Rails.application.routes.draw do

  get 'employee_sched', to: 'page#employee_sched', as: 'employee_sched'

  get 'manager_sched', to: 'page#manager_sched', as: 'manager_sched'

  get 'hosp_admin_sched', to: 'page#hosp_admin_sched', as: 'hosp_admin_sched'

  resources :shifts

  devise_for :users
  get 'page/login'

  get 'contact_us', to: 'page#contact_us', as: 'contact_us'

  get 'about_us', to: 'page#about_us', as: 'about_us'

  post 'about_us', to: 'page#about_us'

  root 'page#home'

   # get "project/new_release" => 'project#new_release', :as => :new_release
   get "deny_popup" => 'shifts#deny_popup', :as => :deny_popup



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
