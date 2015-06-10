Rails.application.routes.draw do

    get '/alsoleftup', to: 'led#alsoleftup'
    get '/alsorightup' => 'led#alsorightup'

    get '/pushleft', to: 'led#pushlefty'
    get '/pushright' => 'led#pushrighty'

    root to: 'led#index'

    get 'other' => 'led#other'
    get 'maybe' => 'led#maybe'
    get 'test' => 'led#test'
    get 'nexties' => 'led#nexties'
    get "standings" => "led#standings"


    post '/pusher/auth', to: 'pusher#auth'

  end
