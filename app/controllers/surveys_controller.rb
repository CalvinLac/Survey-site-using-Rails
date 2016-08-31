class SurveysController < ApplicationController

  def index
    @questionaire = Questionaire.all
  end

  def edit
    @questionaire = Questionaire.find(params[:id])
    @questions = @questionaire.questions
  end

  def update 
    @questionaire = Questionaire.find(params[:id])
    @questionaire.update(questionaire_params)
    redirect_to survey_path(@questionaire) 
  end

  def show
    @questionaire = Questionaire.find(params[:id])
  end


  private

  def questionaire_params
    params.require(:questionaire).permit(:title, :description, :questions_attributes => [:id, :answer])
  end

end
