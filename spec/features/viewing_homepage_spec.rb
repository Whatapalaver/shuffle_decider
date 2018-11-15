describe "Feature tests: User Stories", type: :feature do
  before :each do
    
  end
  context "the homepage" do
    it "displays Welcome to Shuffle Decider" do
      visit '/'
      expect(page).to have_content 'Welcome to Shuffle Decider'
    end
  end
  
end
