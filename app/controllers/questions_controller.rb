require 'pry'
class QuestionsController < ApplicationController
  def index
    @questions = Question.order(:created_at)

  end

  def show
    @question = Question.find(params[:id])
    binding.pry
  end

  def new
    @question = Question.new
    @answer = Answer.new
  end

  def create
  @question = Question.new(question_params)

  if @question.save
    redirect_to @question, notice: "Your question was successfully posted!."
  else
    render action: 'new'
  end

end

private
  def question_params
    params.require(:question).permit(:title, :description)
  end

end

  # continue here, add all controllers for Questions
  # routes to Controllers, add in the specific functionality inside each method
  # model for questions is already created
  # create the view page for other pages, and forms needed.
