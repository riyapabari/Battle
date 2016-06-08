require 'capybara/rspec'


feature 'players can fill-in names, submit and see' do
  scenario 'two players fill-in names' do
    visit '/'
    fill_in('player_one_name', with: 'Aquarious')
    fill_in('player_two_name', with: 'Pisces')
    click_button('Submit')
    expect(page).to have_content('Aquarious vs Pisces')
  end
end

feature "Player 1 can see Player 2's hitpoints" do
  scenario "Player 1 sees Player 2's hitpoints" do
    visit '/'
    fill_in('player_one_name', with: 'Aquarious')
    fill_in('player_two_name', with: 'Pisces')
    click_button('Submit')
    expect(page).to have_content("Pisces's Hit Points")
  end
end
