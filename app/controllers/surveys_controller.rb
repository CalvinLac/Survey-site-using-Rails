class SurveysController < ApplicationController

  def index
    @questionaire = Questionaire.all
  end

  def edit
    @questionaire = Questionaire.find(params[:id])
    @questions = @questionaire.questions
  end

end
