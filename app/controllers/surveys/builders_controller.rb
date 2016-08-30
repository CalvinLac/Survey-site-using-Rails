class Surveys::BuildersController < ApplicationController
  def new
    @questionaire = Questionaire.new
  end

  def create
    @questionaire = Questionaire.new(questionaire_params)
    if @questionaire.save
      session[:current_questionaire_id] = @questionaire.id
      redirect_to new_surveys_question_path
    else
      flash[:error] = "There was an error when trying to create your account"
      render :new
    end
  end


  private
  def questionaire_params
    params.require(:questionaire).permit(:title, :description)
  end
end
