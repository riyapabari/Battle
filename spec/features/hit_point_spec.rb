feature "Player 1 can see Player 2's hitpoints" do
  scenario "Player 1 sees Player 2's hitpoints" do
    sign_in_and_play
    expect(page).to have_content("Pisces's Hit Points")
  end
end

