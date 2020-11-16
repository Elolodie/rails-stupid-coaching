class AnswersController < ApplicationController
  def answer
    @question = params[:question]

    if @question == 'i am going to work'
      @coach_answer = 'Great!'
    elsif @question.end_with?('?')
      @coach_answer = 'Silly question, get dressed and go to work!'
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
    return @coach_answer
  end
end
