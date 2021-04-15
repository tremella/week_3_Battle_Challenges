feature 'see enemy points' do
  scenario 'view player 2 HP' do
    sign_in_and_play
    # save_and_open_page
    expect(page).to have_content('HP: 50')
  end
end
