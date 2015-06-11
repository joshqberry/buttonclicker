class DoublesstatsController < ApplicationController

  def index
    @doublesstats = DoublesStat.all
  end

end
