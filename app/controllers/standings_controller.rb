class StandingsController < ApplicationController

def index
  @singles = Single.all
  @teams = Team.all
  @doubles = Double.all
end

end
