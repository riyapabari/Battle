
feature 'Switch turns' do
	scenario "switches turns" do
	  sign_in_and_play
	  click_button("Attack")
	  click_button("Switch Turn")
	  expect(page).to have_content("It is Pisces's turn")
	end
end
