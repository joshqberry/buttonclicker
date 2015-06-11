Rails.application.routes.draw do

    resources :doubles
    resources :singles
    resources :teams
    resources :players
    resources :singlesstats
    resources :doublesstats

    get '/alsoleftup', to: 'led#alsoleftup'
    get '/alsorightup' => 'led#alsorightup'

    get '/pushlefty', to: 'led#pushlefty'
    get '/pushrighty' => 'led#pushrighty'

    root to: 'led#index'

    get 'other' => 'led#other'
    get 'maybe' => 'led#maybe'
    get 'test' => 'led#test'
    get 'nexties' => 'led#nexties'
    get "standings" => "led#standings"


    post '/pusher/auth', to: 'pusher#auth'

  end
