Rails.application.routes.draw do
  get '/:title', to: 'dashboard#index'
end
