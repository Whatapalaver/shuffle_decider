describe "Feature tests: User Stories", type: :feature do
  feature 'Attack with confirmation' do
    scenario 'player 1 attacks player 2' do
      visit '/'
      click_button 'Shuffle and Deal'
      expect(page).to have_content 'A winner is declared!'
    end
  end
end
