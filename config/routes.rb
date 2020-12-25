Rails.application.routes.draw do
  devise_for :users, except: [:edit, :update, :show]

  resources :rooms, except: [:update, :edit] do
    resources :reservations, except: [:update, :edit, :index]
  end
  root 'rooms#index'
end
