require "rails_helper"

RSpec.describe "authors#index" do
  before(:each) do
    @author_1 = Author.create!(name: "Roberto Bolano", born: 1953, alive: false)
    @author_2 = Author.create!(name: "Thomas Pynchon", born: 1937, alive: true)
    @author_3 = Author.create!(name: "Flannery O'Connor", born: 1925, alive: false)

    @book_1 = @author_1.books.create!(title: "2666", published: 2004, in_print: true, translated_english: true)
    @book_2 = @author_1.books.create!(title: "Savage Detectives", published: 1998, in_print: true, translated_english: true)
    @book_3 = @author_1.books.create!(title: "The Third Riech", published: 2010, in_print: true, translated_english: true)
    @book_4 = @author_1.books.create!(title: "Advice from a Morrison Discple to a Joyce Fanatic", published: 1984, in_print: true, translated_english: false)
  end

  describe "when I visit '/authors/:id/books'" do
    it "shows each book that is associated with that 
    author and each books attributes" do
      visit "/authors/#{@author_1.id}/books"

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

      expect(page).to have_content(@book_4.title)
      expect(page).to have_content(@book_4.published)
      expect(page).to have_content(@book_4.in_print)
      expect(page).to have_content(@book_4.translated_english)
    end

    it "13. when I see a link to 'Add Book' and when I click the link
    I am taken to '/authors/:author_id/books/new' where I see a form
    to add a new book" do
      visit "/authors/#{@author_1.id}/books"

      expect(page).to have_content("Add Book")
      click_link("Add Book")

      expect(page).to have_current_path("/authors/#{@author_1.id}/books/new")
      expect(page).to have_content("Add Book Form")
      expect(page).to have_field(:title)
      expect(page).to have_field(:published)
      expect(page).to have_field(:in_print)
      expect(page).to have_field(:translated_english)
      expect(page).to have_button("Add Book")
    end

    it " when I fill in the form with the child's attributes and click_button 'Create Book'
    then a POST request is sent to '/authors/:author_id/books', a new book is created,
    and I am redirected_to the Authors Books index where see the new book" do
      visit "/authors/#{@author_1.id}/books"

      click_link("Add Book")

      fill_in(:title, with: "Amulet")
      fill_in(:published, with: "1999")
      fill_in(:in_print, with: "true")
      fill_in(:translated_english, with: "true")
      click_button("Add Book")

      expect(page).to have_current_path("/authors/#{@author_1.id}/books")
      expect(page).to have_content("Amulet")
    end
  end
end