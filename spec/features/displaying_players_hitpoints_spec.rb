feature "player hitpoints" do
  scenario "checking players hitpoints" do
      sign_in_and_play
      expect(page).to have_content "Patryk's hitpoints: 100hp"
  end
end