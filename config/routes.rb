Rails.application.routes.draw do
  resources :school_classes, only: [:update, :edit, :show, :create, :new]
  resources :students, only: [:update, :edit, :show, :create, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
