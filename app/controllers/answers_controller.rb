class AnswersController < ApplicationController

  def index
    @question = Question.find(params[:question_id])
    @answers = @question.answers
  end

  def show
    @answer = Answer.find(params[:id])
    @question = @answer.question
  end

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new

  end

  def create
    @question = Question.find(params[:question_id])
    @answer = Answer.new(answer_params)
    @answer.question = @question

        if @answer.save
          flash[:notice] = "Answer saved successfully."

          redirect_to question_path(@question)
        else
          flash[:notice] = "Failed to save answer."
          render :new
          # its definitely something here that isn't connecting!
        end
  end

end

private
  def answer_params
    params.require(:answer).permit(:description)
  end
