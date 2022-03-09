feature "player hitpoints" do
  scenario "checking players hitpoints" do
      visit('/')
      fill_in(name: 'player_1', with: 'Jasmine')
      fill_in(name: 'player_2', with: 'Patryk')
      click_button('submit')
      expect(page).to have_content "Patryk's hitpoints: 100hp"
  end
end