class LedController < ApplicationController
  before_filter :set_up_led, only: [:on, :off]

  def index
    Pusher.app_id = ENV['heroku_app_id']
    Pusher.key = ENV['heroku_key']
    Pusher.secret = ENV['heroku_secret']
  end

  def other
  end

  def maybe
    Pusher['test_channel'].trigger('greet', {
  :greeting => "Hello there!"
})
  end

  def on
    @led.on

    render :nothing => true
  end

  def off
    @led.off

    render :nothing => true
  end

  def numberup
  respond_to do |format|
    format.js { render :js => "incrementValueBig();" }
  end
end

def alsonumberup
  Pusher['button'].trigger!('up', { :some => 'data' })
end

  private

  def set_up_led
    @led = Dino::Components::Led.new(pin: 13, board: DinoRails::Application.config.board)
  end
end
