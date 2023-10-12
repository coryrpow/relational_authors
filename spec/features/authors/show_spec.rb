require "rails_helper"

RSpec.describe "authors#show" do
  before(:each) do
    @author_1 = Author.create!(name: "Roberto Bolano", born: 1953, alive: false)
    @author_2 = Author.create!(name: "Thomas Pynchon", born: 1937, alive: true)
    @author_3 = Author.create!(name: "Flannery O'Connor", born: 1925, alive: false)
  end
  
  describe "when I visit '/authors/:id'" do
    it "shows the attributes of the author in the system" do
      visit "/authors/#{@author_1.id}"

      expect(page).to have_content(@author_1.name)
      expect(page).to have_content(@author_1.born)
      expect(page).to have_content(@author_1.alive)

      expect(page).to_not have_content(@author_2.name)
      expect(page).to_not have_content(@author_3.name)  
    end
  end

end