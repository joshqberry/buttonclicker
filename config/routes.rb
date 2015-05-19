Rails.application.routes.draw do
  get '/on' => 'led#on'
    get '/off' => 'led#off'
    get '/numberupleft' => 'led#numberupleft'
    get '/numberupright' => 'led#numberupright'

    get '/alsonumberup', to: 'led#alsonumberup'
    get '/alsonumberupright' => 'led#alsonumberupright'

    get 'alertme' => 'led#alertme'


    root to: 'led#index'

    get 'other' => 'led#other'
    get 'maybe' => 'led#maybe'

    post '/pusher/auth', to: 'pusher#auth'


  end
