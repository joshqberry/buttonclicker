class LedController < ApplicationController
  before_filter :set_up_led, only: [:on, :off]

  def index
  end

  def test
  end

  def other
  end

  def maybe

  end

  def alertme
    Pusher['test_channel'].trigger('greet', {
  :greeting => "Hello there!"
})



render :nothing => true

  end

  def on
    @led.on

    render :nothing => true
  end

  def off
    @led.off

    render :nothing => true
  end

  def testlefty
  respond_to do |format|
    format.js { render :js => "incrementValueBig();" }


  end
  end

  def testrighty
  respond_to do |format|
  format.js { render :js => "incrementValue3Big();" }


  end
  end

  def alsolefty
    Pusher['private-button'].trigger!('lefty', { :some => 'data' })

    render :nothing => true

  end

  def alsorighty
    Pusher['private-button'].trigger!('righty', { :some => 'data' })

    render :nothing => true

  end


  def numberupleft
  respond_to do |format|
    format.js { render :js => "incrementValueLeft();" }
  end
end

def numberupright
respond_to do |format|
  format.js { render :js => "incrementValueRight();" }
end
end

def alsonumberup
  Pusher['private-button'].trigger!('up', { :some => 'data' })

  render :nothing => true

end

def alsonumberupright
  Pusher['private-button'].trigger!('upright', { :some => 'data' })

  render :nothing => true

end



  private

  def set_up_led
    @led = Dino::Components::Led.new(pin: 13, board: DinoRails::Application.config.board)
  end
end
