class NextiesController < ApplicationController

after_action :move_to_nexties_singles, only: :update

# Note that the after_action doesn't seem to be working; I had to call the move_to_nexties_singles
# method in the update method

def new
  @nexty = Nexty.new
end


def create
  @nexty = Nexty.new(nexty_params)
  @nexty.save
end

def update
  @nexty = Nexty.find(1)
  @nexty.update(nexty_params)
  move_to_nexties_singles
end

def move_to_nexties_singles
  @nexty = Nexty.find(1)
  @nexty.doublesqueue.push(@nexty.singlesqueue)
  @nexty.doublesqueue.flatten!
  @nexty.save
end

private

def nexty_params
  params.require(:nexty).permit(singlesqueue: [ ], doublesqueue: [ ])
end



end
