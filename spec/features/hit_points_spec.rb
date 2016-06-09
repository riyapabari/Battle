require 'spec_helper'

describe 'hit points' do
  it 'displays player_2s hit points' do
    sign_in_and_play
    expect(page).to have_content("Carlos: 60HP")
  end

  it 'reduces player_2 points by 10' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content("Carlos is injured, HP now 50")
  end

end
