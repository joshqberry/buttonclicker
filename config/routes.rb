Rails.application.routes.draw do
  get '/on' => 'led#on'
    get '/off' => 'led#off'
    get '/numberup' => 'led#numberup'

    root to: 'led#index'

    get 'other' => 'led#other'
  end
