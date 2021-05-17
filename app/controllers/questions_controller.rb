class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = 'You did not ask a question!'
    @answer = analyze_question(params[:question]) if params[:question]
  end

  private

  def analyze_question(question)
    return 'Great!' if question == 'I am going to work'
    return 'Silly question, get dressed and go to work!.' if question.include? "?"

    "I don't care, get dressed and go to work!"
  end
end
