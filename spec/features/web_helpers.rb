def sign_in_and_play 
    visit('/')
    fill_in('player_1', with: 'Jasmine')
    fill_in('player_2', with: 'Patryk')
    click_button('submit')
end