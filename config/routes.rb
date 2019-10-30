Rails.application.routes.draw do
  resources :students, except: [:destroy, :index]
  resources :school_classes, except: [:destroy, :index]

  # get "school_classes/:id", to: "school_classes#show"
  # get "/school_classes/:id/edit", to: "school_classes#edit"
  # get "/school_classes/new", to: "school_classes#new", as: "new_school_class"
  # post "/school_classes", to: "school_classes#create"
  # patch "/school_classes/:id", to: "school_classes#update"

  # get "/students/:id", to: "students#show"
  # get "/students/:id/edit", to: "students#edit"
  # get "/students/new", to: "students#new", as: "new_student"
  # post "/students", to: "students#create"
  # patch "/students/:id", to: "students#update"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
