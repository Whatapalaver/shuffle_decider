describe "Feature tests: User Stories", type: :feature do
  before :each do
    
  end
  context "the homepage" do
    it "displays Welcome to Shuffle Decider" do
      visit '/'
      expect(page).to have_content 'Welcome to Shuffle Decider'
    end
  end
  

  feature 'Attack with confirmation' do
    scenario 'player 1 attacks player 2' do
      visit '/'
      click_button 'Shuffle and Deal'
      expect(page).to have_content 'wins'
    end
  end
end
