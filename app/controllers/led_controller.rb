class LedController < ApplicationController
  before_filter :set_up_led, only: [:on, :off]

  def index
  end

  def test
    @queue = [ ]
    @queue2 = [ "Casey"]
  end

  def other
  end

  def maybe
  end

  def nexties
  end

  def standings
  end

  def alsoleftup
  respond_to do |format|
    format.js { render :js => "incrementValueLeft();" }
  end
  end

  def alsorightup
  respond_to do |format|
    format.js { render :js => "incrementValueRight();" }
  end
  end

  def pushlefty
    Pusher['private-button'].trigger!('lefty', { :some => 'data' })
    render :nothing => true
  end

  def pushrighty
    Pusher['private-button'].trigger!('righty', { :some => 'data' })
    render :nothing => true
  end

end
