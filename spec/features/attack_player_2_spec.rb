feature "Attacking player 2" do
  scenario "Button works" do
    sign_in_and_play
    click_button "Attack Patryk"
    expect(page).to have_content "Jasmine attacked Patryk"
  end
end