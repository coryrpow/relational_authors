require "rails_helper"

describe Author, type: :model do
  describe "relationships" do
    it { should have_many(:books) }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:born) }
    it { should allow_value(true).for(:alive) }
    it { should allow_value(false).for(:alive) }
  end

  describe "instance methods" do
    describe "#most_recently_created" do
      it "orders the authors to show most recently created first according to created_at: " do
        author_1 = Author.create!(name: "Roberto Bolano", born: 1953, alive: false)
        author_2 = Author.create!(name: "Thomas Pynchon", born: 1937, alive: true)
        author_3 = Author.create!(name: "Flannery O'Connor", born: 1925, alive: false)

        expect(Author.most_recently_created).to eq([author_1, author_2, author_3])
      end
    end

    describe "#book_count" do
      it "shows the count of all the books that each author has" do
        author_1 = Author.create!(name: "Roberto Bolano", born: 1953, alive: false)
        author_2 = Author.create!(name: "Thomas Pynchon", born: 1937, alive: true)
        author_3 = Author.create!(name: "Flannery O'Connor", born: 1925, alive: false)
    
        book_1 = author_1.books.create!(title: "2666", published: 2004, in_print: true, translated_english: true)
        book_2 = author_1.books.create!(title: "Savage Detectives", published: 1998, in_print: true, translated_english: true)
        book_3 = author_1.books.create!(title: "The Third Riech", published: 2010, in_print: true, translated_english: true)
        book_4 = author_1.books.create!(title: "Advice from a Morrison Discple to a Joyce Fanatic", published: 1984, in_print: true, translated_english: false)
        book_5 = author_1.books.create!(title: "Last Evenings on Earth", published: 1997, in_print: true, translated_english: true)
        
        book_6 = author_2.books.create!(title: "The Crying of Lot 49", published: 1965, in_print: true, translated_english: true)
        book_7 = author_2.books.create!(title: "Inherent Vice", published: 2009, in_print: true, translated_english: true)
        book_8 = author_2.books.create!(title: "Vineland", published: 1990, in_print: true, translated_english: true)
        book_9 = author_2.books.create!(title: "Gravity's Rainbow", published: 1973, in_print: true, translated_english: true)
        book_10 = author_2.books.create!(title: "Against the Day", published: 2006, in_print: true, translated_english: true)

        book_11 = author_3.books.create!(title: "Wise Blood", published: 1952, in_print: true, translated_english: true)
        book_12 = author_3.books.create!(title: "A Good Man is Hard to Find", published: 1955, in_print: true, translated_english: true)
        book_13 = author_3.books.create!(title: "A Prayer Journal", published: 2013, in_print: true, translated_english: true)
        
        expect(author_1.book_count).to eq(5)
        expect(author_2.book_count).to eq(5)
        expect(author_3.book_count).to eq(3)
      end 
    end
  end

  describe "class methods" do
    
  end
end