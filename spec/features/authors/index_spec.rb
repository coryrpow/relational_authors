require "rails_helper"

RSpec.describe "authors#index" do
  before(:each) do
    @author_1 = Author.create!(name: "Roberto Bolano", born: 1953, alive: false)
    @author_2 = Author.create!(name: "Thomas Pynchon", born: 1937, alive: true)
    @author_3 = Author.create!(name: "Flannery O'Connor", born: 1925, alive: false)
  end
  
  describe "when I visit '/authors'" do
    it "shows the name of each author in the system" do
      visit "/authors"

      expect(page).to have_content(@author_1.name)
      expect(page).to have_content(@author_2.name)
      expect(page).to have_content(@author_3.name)  
    end
  end

end