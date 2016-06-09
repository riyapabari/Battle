require 'spec_helper'

describe 'Attacking' do
  it 'allows attack on player 2 and gets confirmation' do
		sign_in_and_play
		click_link "Attack"
		expect(page).to have_content("Steve attacked Carlos!")
	end

  it 'allows attack on player 2 and gets confirmation' do
		sign_in_and_play
		click_link "Attack"
    click_button "OK"
    click_link "Attack"
		expect(page).to have_content("Carlos attacked Steve!")
	end


end
