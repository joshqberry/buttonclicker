class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
      if @team.save

        @team.players << Player.where(name: @team.player1)
       @team.players << Player.where(name: @team.player2)

        redirect_to teams_path
      else
        render 'teams/new'
      end
  end



  def show
    @team = Team.find(params[:id])
    @team_id_to_string = @team.id.to_s
    @doubles = Double.where(
  Double.arel_table[:teamwinner_id].eq(@team_id_to_string).or(
    Double.arel_table[:teamloser_id].eq(@team_id_to_string)))
    @players = @team.players
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    if @team.update
      redirect_to teams_path
    else
      render 'teams/edit'
    end
  end

  def destroy
  end


private

def team_params
      params.require(:team).permit(:player1, :player2, :team_players, :player_ids => [])
    end

    def players
      @teamplayer1 = @team.player1
      puts @teamplayer1
    end

  end
