feature "entering names" do
    scenario "players enter names" do
        visit('/')
        fill_in('player_1', with: 'Jasmine')
        fill_in('player_2', with: 'Patryk')
        click_button('submit')
        expect(page).to have_content 'Hello Jasmine and Patryk!'
      end
end