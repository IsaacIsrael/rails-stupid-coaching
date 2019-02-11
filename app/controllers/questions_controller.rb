# frozen_string_literal: true

# Question Controller
class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @awnser = stupid_awnser(@question)
  end

  private

  def affirmative_phrases_awnser
    "I don't care, get dressed and go to work!"
  end

  def aquestion_phrases_awnser
    'Silly question, get dressed and go to work!.'
  end

  def good_awnser
    'Great!'
  end

  def stupid_awnser(question)
    return good_awnser if question == 'I am going to work'

    question.last == '?' ? aquestion_phrases_awnser : affirmative_phrases_awnser
  end
end
