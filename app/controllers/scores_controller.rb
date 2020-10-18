class ScoresController < ApplicationController
    skip_before_action :authorized, only: [:create, :show, :index]

    def index
        scores = Score.all
        render json: scores
    end

    def show
        score = Score.find(params[:id])
        render json: score
    end

    def create
        @score = Score.create!(score_params)
        if @score.save!
          render json: @score, status: :created
        else
          render json: { error: 'failed to create score' }, status: :not_acceptable
        end
    end

    private 

    def score_params
        params.require(:score).permit(:points, :user_id)
    end
end
