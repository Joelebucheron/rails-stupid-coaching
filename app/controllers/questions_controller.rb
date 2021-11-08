class QuestionsController < ApplicationController
  def ask; end

  def answer
    answer_form = params[:answer]
    @coach_reply = if answer_form.include?('?')
                     'Silly question, get dressed and go to work!'
                   elsif answer_form == 'I am going to work'
                     'Great!'
                   else
                     "I don't care, get dressed and go to work!"
                   end
  end
end
