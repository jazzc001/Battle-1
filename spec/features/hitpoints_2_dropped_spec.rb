feature "hitpoint_2_dropped" do
    scenario "dropped by 10 HK" do
        sign_in_and_play
        click_button(name: "attack player 2")
        expect(page).to have_content "Patryk's hitpoints: 90hp"
    end

end