class AnswersController < ApplicationController
  def show
    @answer = Answer.find(params[:id])

    render json: @answer
  end
end