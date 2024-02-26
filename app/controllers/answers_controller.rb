class AnswersController < ApplicationController
  def answer
    @question = params[:question]
    if @question.present?
      if @question.include?("?")
        @answer = "Silly question, get dressed and go to work!"
      elsif @question == "I am going to work"
        @answer ="Great!"
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    else
      @question = "No questions asked"
    end
  end

  def ask
  end
end
