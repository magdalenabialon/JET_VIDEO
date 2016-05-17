Rails.application.routes.draw do

  get 'rooms/index'

  get 'rooms/create'

  get 'rooms/party'

  get 'rooms/config_opentok'

  root 'welcome#index'
end
