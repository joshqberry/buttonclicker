class DoublesController < ApplicationController

def index
  @doubles = Double.all
  @team = Team.find(1)
end

def new
  @double = Double.new
end

def create
  @double = Double.new(double_params)
    if @double.save

      @double.teams << Team.where(team_players: @double.teamA_id)
      @double.teams << Team.where(team_players: @double.teamB_id)


      redirect_to doubles_path
    else
      render 'doubles/new'
    end
end

# Note: No show page necessary.

def edit
  @double = Double.find(params[:id])
end

def update
  @double = Double.find(params[:id])
  if @double.update(double_params)
    render 'doubles/index'
  else
    render 'doubles/edit'
  end
end

def destroy
end



private

def double_params
    params.require(:double).permit(:teamA_id, :teamB_id, :teamwinner_id, :teamloser_id,
    :teamwinner_score, :teamloser_score)
  end

end
