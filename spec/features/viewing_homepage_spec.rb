describe "Feature tests: User Stories", type: :feature do
  before :each do
    
  end
  context "the homepage" do
    it "displays Hello world" do
      visit '/'
      expect(page).to have_content 'Hello world!'
    end
  end
  
end
