class LedController < ApplicationController
  before_filter :set_up_led, only: [:on, :off]

  def index
    Pusher.app_id = ENV['app_id']
    Pusher.key = ENV['key']
    Pusher.secret = ENV['secret']
  end

  def other
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

  private

  def set_up_led
    @led = Dino::Components::Led.new(pin: 13, board: DinoRails::Application.config.board)
  end
end
