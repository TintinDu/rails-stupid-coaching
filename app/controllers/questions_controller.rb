class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answers = ["Silly question, get dressed and go to work!","Great!", "I don't care, get dressed and go to work!"]
    @question  = params[:question]
    if @question.last == "?"
      @answer = @answers[0]
    elsif @question == "I am going to work"
      @answer = @answers[1]
    else
      @answer = @answers[2]
    end
  end
end
