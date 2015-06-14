class SinglesController < ApplicationController

  after_action :set_winnerscore, only: :create
  after_action :set_loserscore, only: :create
  after_action :set_winnerid, only: :create
  after_action :set_loserid, only: :create


  def index
    @singles = Single.all
    @player = Player.find(1)
  end

  def new
    @single = Single.new
  end

  def create
    @single = Single.new(single_params)

      if @single.save

        @single.players << Player.where(name: @single.playerA_name)
        @single.players << Player.where(name: @single.playerB_name)


        redirect_to singles_path
      else
        render 'singles/new'
      end

  end

  # Note: No show page necessary.


  def edit
    @single = Single.find(params[:id])
  end

  def update
    @single = Single.find(params[:id])
    if @single.update(single_params)
      redirect_to singles_path
    else
      render 'singles/edit'
    end
  end

  def destroy
  end



  private

  def set_winnerscore
      @single = Single.last
      if @single.playerA_score > @single.playerB_score
      @single.winner_score = @single.playerA_score
    else
      @single.winner_score = @single.playerB_score
    end
      @single.save
    end

    def set_loserscore
        @single = Single.last
        if @single.playerA_score < @single.playerB_score
        @single.loser_score = @single.playerA_score
      else
        @single.loser_score = @single.playerB_score
      end
        @single.save
      end

      def set_winnerid
          @single = Single.last
        if @single.playerA_score > @single.playerB_score
          @player = Player.where(name: @single.playerA_name)
          @single.winner_id = @player[0].id
        else
          @player = Player.where(name: @single.playerB_name)
          @single.winner_id = @player[0].id
        end
          @single.save
        end

        def set_loserid
            @single = Single.last
          if @single.playerA_score < @single.playerB_score
            @player = Player.where(name: @single.playerA_name)
            @single.loser_id = @player[0].id
          else
            @player = Player.where(name: @single.playerB_name)
            @single.loser_id = @player[0].id
          end
            @single.save
          end

  def single_params
      params.require(:single).permit(:playerA_name, :playerB_name, :winner_id, :loser_id,
      :winner_score, :loser_score, :playerA_score, :playerB_score, :ended_at)
    end

  end
