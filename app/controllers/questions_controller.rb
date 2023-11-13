class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    # if the question variable matches I am going to work - coach answer = great
    if @question == "I am going to work"
      @answer = "Great!"
    # if question variable contains a ? coach answer = Silly question, get dressed and go to work!
    elsif @question.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    # else coach answer = I don't care, get dressed and go to work!
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    # raise
  end
end



    # If the message is I am going to work, the coach will answer Great!
    # If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
    # Otherwise the coach will answer I don't care, get dressed and go to work!
