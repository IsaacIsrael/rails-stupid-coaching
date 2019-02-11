# frozen_string_literal: true

require 'application_system_test_case'

class QuestionsTest < ApplicationSystemTestCase
  test 'visiting/ask renders the form' do
    visit ask_url
    assert_selector 'label', text: 'Ask your coach anything:'
  end

  test 'saying Hello yield a grumpy response from the coach' do
    visit ask_url
    fill_in 'question', with: 'Hello'
    click_on 'Ask'

    assert_text "I don't care, get dressed and go to work!"
  end
  test 'saying Hello? yield a grumpy response from the coach' do
    visit ask_url
    fill_in 'question', with: 'Hello?'
    click_on 'Ask'

    assert_text 'Silly question, get dressed and go to work!.'
  end
  test 'saying I am going to work yield a good response from the coach' do
    visit ask_url
    fill_in 'question', with: 'I am going to work'
    click_on 'Ask'

    assert_text 'Great!'
  end
  test 'saying nothing yield a grumpy response from the coach' do
    visit ask_url
    fill_in 'question', with: ''
    click_on 'Ask'

    assert_text "I don't care, get dressed and go to work!"
  end
end
