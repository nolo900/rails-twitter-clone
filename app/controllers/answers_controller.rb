class AnswersController < ApplicationController

  def create
    Answer.create(answer_params)

    redirect_to
  end

  def show
    @answer = Answer.find_by_question_id(params[:id])
  end


  private

  def answer_params
    params.require(:answer).permit(:question_id, :email,:body)
  end

end
