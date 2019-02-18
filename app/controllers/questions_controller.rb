class QuestionsController < ApplicationController
  def ask
    # Vas la vue ask
  end

  def answer
    @question = params[:question]
    @answer =
      if @question == "I'm going to work"
        'Great !'
      elsif @question.chars.last == '?'
        'Silly question, get dressed and go to work!'
      else
        "I don't care, get dressed and go to work!"
      end
  end
end
