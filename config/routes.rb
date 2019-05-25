Rails.application.routes.draw do
  get 'google_custom_search/index'
  resources :gatitos
  resources :perritos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
