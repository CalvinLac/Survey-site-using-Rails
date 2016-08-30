Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :surveys

  namespace :surveys do
    resources :builders 
    resources :questions, only: [:new, :create]
  end

end
