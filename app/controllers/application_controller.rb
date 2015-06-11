class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def player_total_wins
    @singles.where(winner_id: @player.id).count
  end

  def player_total_losses
    @singles.where(loser_id: @player.id).count
  end

  def team_total_wins
    @doubles.where(teamwinner_id: @team.id).count
  end

  def team_total_losses
    @doubles.where(teamloser_id: @team.id).count
  end

  def vs_player
    @teams.each {|x| puts x.doubles}
  end

  def hello
    "hello"
  end

 def player_total_doubles_wins
   @goo = @teams.to_a
   @this = @goo.map { |x| x.id}
   @doubles.where(teamwinner_id: @goo).count
 end

 def player_total_doubles_losses
   @goo = @teams.to_a
   @this = @goo.map { |x| x.id}
   @doubles.where(teamloser_id: @goo).count
 end



  helper_method :player_total_doubles_wins
  helper_method :player_total_doubles_losses
  helper_method :hello
  helper_method :player_total_wins
  helper_method :player_total_losses
  helper_method :team_total_wins
  helper_method :team_total_losses


end
