
# an imitation of the user experience

feature 'Testing player input' do
  scenario 'Players input names' do
    sign_in_and_play
    # save_and_open_page
    expect(page).to have_content('Charlotte vs. Mittens')
  end
end
