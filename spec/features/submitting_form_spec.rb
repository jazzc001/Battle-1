feature "entering names" do
    scenario "players enter names" do
        sign_in_and_play
        expect(page).to have_content 'Hello Jasmine and Patryk!'
      end
end