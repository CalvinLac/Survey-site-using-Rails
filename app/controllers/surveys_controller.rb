class SurveysController < ApplicationController

  def index
    @questionaire = Questionaire.all
    session.delete(:current_questionaire_id)
  end

  def show
    @questionaire = Questionaire.find_by(params[:id])

    @questionaire.id = Questionaire.find_by(params[:id])

    @question = @questionaire.questions
  end

end
