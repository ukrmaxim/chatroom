Rails.application.routes.draw do
  root 'rooms#index'

  resources :rooms, only: %i[create index show destroy], param: :token

  mount ActionCable.server => '/cable'
end
