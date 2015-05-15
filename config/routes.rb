Rails.application.routes.draw do
  get '/on' => 'led#on'
    get '/off' => 'led#off'
    get '/numberup' => 'led#numberup'
    get '/alsonumberup', to: 'led#alsonumberup'

    root to: 'led#index'

    get 'other' => 'led#other'
    get 'maybe' => 'led#maybe'

    post '/pusher/auth', to: 'pusher#auth'


  end
