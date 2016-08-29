class Surveys::BuildersController < ApplicationController
  def new
    @questionaire = Questionaire.new
  end

  def create
    @questionaire = Questionaire.new(my_params)
    if @questionaire.save
      redirect_to surveys_path
    else
      flash[:error] = "There was an error when trying to create your account"
      render :new
    end
  end


  private
  def my_params
    params.require(:questionaire).permit(:title, :description)
  end
end
