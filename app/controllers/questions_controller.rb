class QuestionsController < ApplicationController
  def ask
    @answer
  end

  def answer
    @coach = ""
    if params[:answer]
     @answer = params[:answer]
    end
    if @answer == "I am going to work"
      @coach = "Great!"
    elsif @answer.include?("?")
      @coach = "Silly question, get dressed and go to work!"
    else
      @coach = "I don't care, get dressed and go to work!"
    end
  end
end
