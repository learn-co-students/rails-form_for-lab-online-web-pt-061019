Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :students, only: [:index, :create, :new, :edit, :show, :update]
  # resources :school_class, only: [:index, :create, :new, :edit, :show, :update]
  resources :students, except: [:destroy, :index]
  patch 'students/:id', to: 'student#update'
  resources :school_classes, except: [:destroy, :index]

  patch 'school_class/:id', to: 'school_class#update'
end
