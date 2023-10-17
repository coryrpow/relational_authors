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

    it "14. then I see a link 'Update Book' and when clicked, I am taken to '/books/:id/edit'
    where I see a formm to edit the books attributes" do
      visit "/books/#{@book_1.id}"

      expect(page).to have_link("Update Book")
      click_link("Update Book")

      expect(page).to have_current_path("/books/#{@book_1.id}/edit")
      expect(page).to have_content("Update Book Form")
      expect(page).to have_field(:title)
      expect(page).to have_field(:published)
      expect(page).to have_field(:in_print)
      expect(page).to have_field(:translated_english)
      expect(page).to have_button("Update Book")
    end

    it "when I fill it out and click the submit 'Update Book' then a PATCH
    is sent to '/book/:id' the books data is updated and redirected to the show page" do
      visit "/books/#{@book_1.id}"

      click_link("Update Book")

      fill_in(:title, with: "Woes of the True Policeman")
      fill_in(:published, with: "2012")
      fill_in(:in_print, with: "true")
      fill_in(:translated_english, with: "true")
      click_button("Update Book")

      expect(page).to have_current_path("/books/#{@book_1.id}")
      expect(page).to have_content("Woes of the True Policeman")
    end
  end

end
