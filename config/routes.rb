Rails.application.routes.draw do
  get 'simsim/index'
  get 'simsim/learn'

  post 'simsim/teach'
  post 'simsim/check'
  root 'simsim#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
