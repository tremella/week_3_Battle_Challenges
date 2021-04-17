feature 'see enemy points' do
  scenario 'view player 2 HP' do
    sign_in_and_play
    # save_and_open_page
    expect(page).to have_content('HP: 50')
  end

  scenario 'attack player 2' do
    sign_in_and_play
    click_button('attack!')
    expect(page).to have_content('attacked!!')
  end

  scenario 'p1 attack on p2 results in -10 HP for p2' do
    sign_in_and_play
    click_button('attack!')
    expect(page).not_to have_content('HP:50')
    expect(page).to have_content('HP:40')
  end
end
