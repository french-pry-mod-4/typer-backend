class GamesController < ApplicationController

  def index
    # only return games with high enough accuracy
    accurate_games = Game.where("accuracy >= ?", 80)
    # top 10 fastest
    games = accurate_games.where("speed IS NOT NULL").order("speed DESC", "accuracy DESC").limit(10) # speed: :desc, accuracy: :desc
    
    render json: games
  end

  def show
    game = Game.find(params[:id])

    render json: game
  end


  def create
    #hardcoding in the user for now - 
    user_id = User.first.id
    # find a random passage
    # passage_id = Passage.pluck(:id).sample
    game = Game.create(user_id: user_id, passage_id: params[:passage_id]) #speed: params[:speed], accuracy: params[:accuracy], 
    render json: game
  
  end

  def update
    game = Game.find(params[:id])
    game.update(speed: params[:speed], accuracy: params[:accuracy], played: true)
    render json: game
  end

  
end
