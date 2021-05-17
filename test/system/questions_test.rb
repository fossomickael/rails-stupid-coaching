require 'application_system_test_case'

class QuestionsTest < ApplicationSystemTestCase
  # test 'visiting the index' do
  #   visit questions_url
  #
  #   assert_selector 'h1', text: 'Questions'
  # end
  test 'saying Hello yields a grumpy response from the coach' do
    visit ask_url
    fill_in 'question', with: 'Hello', wait: 0.1
    click_on 'Ask'
    assert_text("I don't care, get dressed and go to work!", wait: 0.1)
  end

  test 'visiting /ask renders the form' do
    visit ask_url
    assert_selector 'p', text: 'Ask your coach anything'
  end
end