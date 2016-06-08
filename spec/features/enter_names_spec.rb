feature 'players can fill-in names, submit and see' do
  scenario 'two players fill-in names' do
    sign_in_and_play
    expect(page).to have_content('Aquarious vs Pisces')
  end
end


