require 'capybara/rspec'


feature 'players can fill-in names, submit and see' do
  scenario 'two players fill-in names' do
    get '/'
    fill_in('Player One name', with: 'Aquarious')
    fill_in('Player Two name', with: 'Pisces')
    click_button('Submit')
    expect(page).should (have_content('Aquarious') && have_content('Pisces'))
  end
end
