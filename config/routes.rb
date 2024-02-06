Rails.application.routes.draw do
  get 'department/index'
  get 'department/create'
  get 'blogs/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :projects
  resources :courses
  resources :departments
  resources :blogs

  get 'welcome/index'
    devise_scope :user do
    # Redirests signing out users back to sign-in
    get "users", to: "devise/sessions#new"
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root "students#index"
  resources :students
  # namespace :admin do 
  #   resources :students
  # end
  scope :admin do 
    resource :students
  end

end
