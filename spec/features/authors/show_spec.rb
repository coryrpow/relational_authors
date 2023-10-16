require "rails_helper"

RSpec.describe "authors#show" do
  before(:each) do
    @author_1 = Author.create!(name: "Roberto Bolano", born: 1953, alive: false)
    @author_2 = Author.create!(name: "Thomas Pynchon", born: 1937, alive: true)
    @author_3 = Author.create!(name: "Flannery O'Connor", born: 1925, alive: false)

    @book_1 = @author_1.books.create!(title: "2666", published: 2004, in_print: true, translated_english: true)
    @book_2 = @author_1.books.create!(title: "Savage Detectives", published: 1998, in_print: true, translated_english: true)
    @book_3 = @author_1.books.create!(title: "The Third Riech", published: 2010, in_print: true, translated_english: true)
    @book_4 = @author_1.books.create!(title: "Advice from a Morrison Discple to a Joyce Fanatic", published: 1984, in_print: true, translated_english: false)
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

    it "shows the count of the number of books 
    associated with this author" do
      visit "/authors/#{@author_1.id}"

      expect(@author_1.book_count).to eq(4)
    
    end
  end

end