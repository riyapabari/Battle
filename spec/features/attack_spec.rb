
feature 'attacking' do
  scenario 'Player 1 attacks Player 2' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Aquarious attacked Pisces')
  end

	scenario "Player 1 attacks Player 2" do
		sign_in_and_play
		click_button("Attack")
		expect(page).to have_content("Pisces's Hit Points: #{Player::STARTING_HIT_POINTS - Player::ATTACK_DAMAGE}")
	end

	scenario "Player 2 attacks Player 1" do
		sign_in_and_play
		click_button("Attack")
		click_button("Switch Turn")
		click_button("Attack")
		expect(page).to have_content("Pisces attacked Aquarious")
	end

end
