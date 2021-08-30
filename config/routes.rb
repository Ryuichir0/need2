Rails.application.routes.draw do
  get 'categories/index'
  devise_for :users
  root to: 'pages#home'
  resource :dashboard, only: [:show]
  resources :missions, only: [:index, :new, :create, :show] do
    resources :helps, only: [:index, :new, :create]
  end
  post "/:mission_id/confirm", to: "helps#confirm", as: :confirm_help
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
