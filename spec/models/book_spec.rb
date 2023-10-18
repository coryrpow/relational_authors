require "rails_helper"

describe Book, type: :model do
  describe "relationships" do
    it { should belong_to(:author) }
  end

  describe "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:published) }
    it { should allow_value(true).for(:in_print) }
    it { should allow_value(false).for(:in_print) }
    it { should allow_value(true).for(:translated_english) }
    it { should allow_value(false).for(:translated_english) }
  end

  describe "instance methods" do
    
  end

  describe "class methods" do
    describe "alphabetical_books" do
      it "sorts the books to display in alphabetical order by title" do

        author_1 = Author.create!(name: "Roberto Bolano", born: 1953, alive: false)

        book_1 = author_1.books.create!(title: "2666", published: 2004, in_print: true, translated_english: true)
        book_2 = author_1.books.create!(title: "Savage Detectives", published: 1998, in_print: true, translated_english: true)
        book_3 = author_1.books.create!(title: "The Third Riech", published: 2010, in_print: true, translated_english: true)
        book_4 = author_1.books.create!(title: "Advice from a Morrison Discple to a Joyce Fanatic", published: 1984, in_print: true, translated_english: false)

        expect(Book.alphabetical_books).to eq([book_1, book_4, book_2, book_3])
      end

    end
  end
end