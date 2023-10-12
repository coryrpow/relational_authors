require "rails_helper"

RSpec.describe "books#index" do
  before(:each) do
    @author_1 = Author.create!(name: "Roberto Bolano", born: 1953, alive: false)

    @book_1 = @author_1.books.create!(title: "2666", published: 2004, in_print: true, translated_english: true)
    @book_2 = @author_1.books.create!(title: "Savage Detectives", published: 1998, in_print: true, translated_english: true)
    @book_3 = @author_1.books.create!(title: "The Third Riech", published: 2010, in_print: true, translated_english: true)
    @book_4 = @author_1.books.create!(title: "Advice from a Morrison Discple to a Joyce Fanatic", published: 1984, in_print: true, translated_english: false)
  end
  
  describe "when I visit '/books'" do
    it "shows the attributes of each book in the system" do
      visit "/books"

      expect(page).to have_content(@book_1.title)
      expect(page).to have_content(@book_1.published)
      expect(page).to have_content(@book_1.in_print)
      expect(page).to have_content(@book_1.translated_english)

      expect(page).to have_content(@book_2.title)
      expect(page).to have_content(@book_2.published)
      expect(page).to have_content(@book_2.in_print)
      expect(page).to have_content(@book_2.translated_english)

      expect(page).to have_content(@book_3.title)  
      expect(page).to have_content(@book_3.published)  
      expect(page).to have_content(@book_3.in_print)  
      expect(page).to have_content(@book_3.translated_english)  
    end
  end

end