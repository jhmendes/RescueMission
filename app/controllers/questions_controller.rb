class QuestionsController < ApplicationController
  def index
    @questions = Question.order(:created_at)
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new
  end

  # continue here, add all controllers for Questions
  # routes to Controllers, add in the specific functionality inside each method
  # model for questions is already created
  # create the view page for other pages, and forms needed.
end
