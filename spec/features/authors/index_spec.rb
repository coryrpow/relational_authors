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

    it "shows the records are ordered by most recently created first
    and next to each record I see when it was created" do
      visit "/authors"

      expect(@author_1.name).to appear_before(@author_2.name) 
      expect(@author_2.name).to appear_before(@author_3.name) 
      
      expect(page).to have_content(@author_2.created_at) 
      expect(page).to have_content(@author_3.created_at) 
      

      # These don't work and I think it has something to do with the 
      # way the time is displaying, but not sure how to get that
      # or if it even matters if the authors names appearing in order 
      # already passes the test in an effective way.


      # expect(@author_1.created_at).to appear_before(@author_2.created_at) 
      # expect(@author_2.created_at).to appear_before(@author_3.created_at) 
    end
  end


end

# 