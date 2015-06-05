Rails.application.routes.draw do
  resources :features do
    resources :requirements, only: [:index, :create, :new]
  end

  resources :requirements, only: [:index, :show, :edit, :update, :destroy]
end
