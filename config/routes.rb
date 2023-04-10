Rails.application.routes.draw do
  resources :species, only: [:index, :create, :show, :update, :destroy]

  resources :cages, only: [:index, :create, :show, :update, :destroy] do
    member do
      get 'dinosaurs', to: 'cages#dinosaurs'
    end
  end

  resources :dinosaurs, only: [:index, :create, :show, :update, :destroy]
end
