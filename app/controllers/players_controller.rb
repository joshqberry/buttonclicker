class PlayersController < ApplicationController


  def index
    @players = Player.all
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
      if @player.save
        redirect_to players_path
      else
        render 'players/new'
      end
  end

  def show
    @player = Player.find(params[:id])
    @singles = Single.where(
      Single.arel_table[:playerA_name].eq(@player.name).or(
      Single.arel_table[:playerB_name].eq(@player.name)))
    @teams = Team.where(
      Team.arel_table[:teammember1].eq(@player.name).or(
      Team.arel_table[:teammember2].eq(@player.name)))
    @doubles = Double.all
    # (
    #     Double.arel_table[:playerA1_id].eq(@player.name).or(
    #     Double.arel_table[:playerA2_id].eq(@player.name)).or(
    #     Double.arel_table[:playerB1_id].eq(@player.name)).or(
    #     Double.arel_table[:playerB2_id].eq(@player.name)))
  end


  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    if @player.update(player_params)
      redirect_to players_path
    else
      render 'players/edit'
    end
  end

  def destroy
  end




private

def player_params
      params.require(:player).permit(:name, :nickname, :photo_ref, :team_ids => [])
    end





  end
