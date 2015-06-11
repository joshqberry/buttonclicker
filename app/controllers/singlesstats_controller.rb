class SinglesstatsController < ApplicationController

  def index
    @singlesstats = SinglesStat.all
  end

end
