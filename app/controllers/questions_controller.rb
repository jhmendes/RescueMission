require 'pry'

class QuestionsController < ApplicationController

  def index
    @questions = Question.order(:created_at)
  end

  def show
    @question = Question.find(params[:id])
   	@answers = Answer.where(question_id: @question)
  end

  def new
    @question = Question.new
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @question.update_attributes(question_params)

    if @question.save
      redirect_to @question, notice: "Your question was successfully updated!."
    else
      render action: 'edit'
    end
 end

  def create
  @question = Question.new(question_params)

  if @question.save
    redirect_to @question, notice: "Your question was successfully posted!."
  else
    render action: 'new'
  end


end

def destroy
  @question = Question.find(params[:id])
  @question.delete
  redirect_to questions_path
end

private
  def question_params
    params.require(:question).permit(:title, :description)
  end

end
