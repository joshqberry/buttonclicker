Rails.application.routes.draw do
  get '/on' => 'led#on'
    get '/off' => 'led#off'

    root to: 'led#index'

    get 'other' => 'led#other'
  end
