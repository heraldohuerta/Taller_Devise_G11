Rails.application.routes.draw do


  get 'dashboards/index'

  # devise_for :users, controllers: {
  #       sessions: 'users/sessions'
  #     }
devise_for :users, controllers: {
      registrations: "users/registrations"

 }

  resources :histories

  get 'histories:id', to: 'histories#my_history',  as: 'my_history'

 get 'dashboards', to: 'dashboards#index',  as: 'index'



  root "histories#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
