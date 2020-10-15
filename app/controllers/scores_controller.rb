class ScoresController < ApplicationController

    def index
        scores = Score.all
        render json: scores
    end

    def show
        score = Score.find(params[:id])
        render json: score
    end
end
