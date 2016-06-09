def sign_in_and_play
	visit '/'
  fill_in('player_one_name', with: 'Aquarious')
  fill_in('player_two_name', with: 'Pisces')
  click_button('Submit')
end
