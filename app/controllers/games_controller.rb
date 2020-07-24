class GamesController < ApplicationController

  def index
    games = Game.all

    render json: games
  end

  def create
    #hardcoding in the user for now - 
    user_id = User.first.id
    # find a random passage
    passage_id = Passage.pluck(:id).sample
    game = Game.create(user_id: user_id, passage_id: passage_id) #speed: params[:speed], accuracy: params[:accuracy], 
    render json: game
  
  end
end
