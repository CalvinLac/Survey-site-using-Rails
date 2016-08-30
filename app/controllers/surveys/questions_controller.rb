class Surveys::QuestionsController < ApplicationController
  def new
    @question = Question.new
    @questionaire = Questionaire.find_by_id(session[:current_questionaire_id])
  end

  def create
    @question = Question.new(question_params)
    @question.questionaire_id = (session[:current_questionaire_id])
    if @question.save
      redirect_to new_surveys_question_path
    else
      flash[:error] = "There was an error when trying to create your account"
      render :new
    end

  end

  private

  def question_params
    params.require(:question).permit(:title, :answer, :questionaire_id)
  end
end

