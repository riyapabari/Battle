	feature 'On game start' do
		scenario 'displays no attack info' do
			sign_in_and_play
			expect(page).not_to have_content("Pisces attacked Aquarious")
		end
	end

	feature 'Player 1 attacks Player 2' do
		
	  scenario 'displays confo player 1 attacked player 2' do
	    sign_in_and_play
	    click_button('Attack')
	    expect(page).to have_content('Aquarious attacked Pisces')
	  end

		scenario "player 2's HP is reduced by ATTACK_DAMAGE" do
			sign_in_and_play
			click_button("Attack")
			expect(page).to have_content("Pisces's Hit Points: #{Player::STARTING_HIT_POINTS - Player::ATTACK_DAMAGE}")
		end

		scenario "player 1's HP is unchanged" do
			sign_in_and_play
			click_button("Attack")
			expect(page).to have_content("Aquarious's Hit Points: #{Player::STARTING_HIT_POINTS}")
		end

	end

feature 'Players 2 attacks player 1' do

	scenario "Displays confo player 2 attacked player 1" do
		sign_in_and_play
		click_button("Attack")
		click_button("Attack")
		expect(page).to have_content("Pisces attacked Aquarious")
	end

	scenario "Player 1s hp is reduced by ATTACK_DAMAGE" do
		sign_in_and_play
		click_button("Attack")
		click_button("Attack")
		expect(page).to have_content("Aquarious's Hit Points: #{Player::STARTING_HIT_POINTS - Player::ATTACK_DAMAGE}")
	end

end
