class PassagesController < ApplicationController

  skip_before_action :authorized, only: [:index]
  
  def index
    passages = Passage.all

    render json: passages
  end
end
