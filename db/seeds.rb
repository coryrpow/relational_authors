# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Author.destroy_all
Book.destroy_all

@author_1 = Author.create!(name: "Roberto Bolano", born: 1953, alive: false)
@author_2 = Author.create!(name: "Thomas Pynchon", born: 1937, alive: true)
@author_3 = Author.create!(name: "Flannery O'Connor", born: 1925, alive: false)

@book_1 = @author_1.books.create!(title: "2666", published: 2004, in_print: true, translated_english: true)
@book_2 = @author_1.books.create!(title: "Savage Detectives", published: 1998, in_print: true, translated_english: true)
@book_3 = @author_1.books.create!(title: "The Third Riech", published: 2010, in_print: true, translated_english: true)
@book_4 = @author_1.books.create!(title: "Advice from a Morrison Discple to a Joyce Fanatic", published: 1984, in_print: true, translated_english: false)
@book_5 = @author_1.books.create!(title: "Last Evenings on Earth", published: 1997, in_print: true, translated_english: true)