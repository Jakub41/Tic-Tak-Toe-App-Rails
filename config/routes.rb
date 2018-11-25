Rails.application.routes.draw do
  root to: 'grids#index'
  mount ActionCable.server => "/cable"
end
