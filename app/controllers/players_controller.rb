class PlayersController < ApplicationController
    def index 
        players = Player.all 

        render json: players
    end

    def create 
        player = Player.create(player_params)

        render json: player, only: [:name]
    end

    private

    def player_params
        params.require(:player).permit(:name)
    end 
end
