class LedController < ApplicationController
  before_filter :set_up_led, only: [:on, :off]

  def index
  end

  def test
    @queue = [ ]
    @queue2 = [ "Casey"]
    @single = Single.new
    @double = Double.new
    @nexty = Nexty.first
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

  private

  def single_params
      params.require(:single).permit(:playerA_name, :playerB_name, :winner_id, :loser_id,
      :winner_score, :loser_score, :playerA_score, :playerB_score)
    end

end
