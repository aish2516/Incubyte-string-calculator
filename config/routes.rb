Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "incubyte_calculator#index"
  get "incubyte_calculator/calculate", to: "incubyte_calculator#calculate", as: "incubyte_calculator_calculate"
end
