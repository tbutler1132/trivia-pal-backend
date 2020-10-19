class QuestionsController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]

    def index
        questions = Question.all
        render json: questions
    end

    def show
        question = Question.find(params[:id])
    end

end
