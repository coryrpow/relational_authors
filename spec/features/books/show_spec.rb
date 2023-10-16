require "rails_helper"

RSpec.describe "books#show" do
  before(:each) do
    @author_1 = Author.create!(name: "Roberto Bolano", born: 1953, alive: false)

    @book_1 = @author_1.books.create!(title: "2666", published: 2004, in_print: true, translated_english: true)
    @book_2 = @author_1.books.create!(title: "Savage Detectives", published: 1998, in_print: true, translated_english: true)
    @book_3 = @author_1.books.create!(title: "The Third Riech", published: 2010, in_print: true, translated_english: true)
    @book_4 = @author_1.books.create!(title: "Advice from a Morrison Discple to a Joyce Fanatic", published: 1984, in_print: true, translated_english: false)
  end
  
  describe "when I visit '/books/:id'" do
    it "shows the attributes of each book in the system" do
      visit "/books/#{@book_1.id}"

      expect(page).to have_content(@book_1.title)
      expect(page).to have_content(@book_1.published)
      expect(page).to have_content(@book_1.in_print)
      expect(page).to have_content(@book_1.translated_english)
    end
  end

end

# need to add validation testing for the book class and maybe look at doing more 
# dynamic testing? I don't know if this sort of testing is more effective or less right now
