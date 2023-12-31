# README

* CRUD

[x] done

User Story 1, Authors Index 

For each author table
As a visitor
When I visit '/authors'
Then I see the name of each Author record in the system

[x] done

User Story 2, Authors Show 

As a visitor
When I visit '/authors/:id'
Then I see the author with that id including the author's attributes
(data from each column that is on the authors table)

[x] done

User Story 3, Books Index 

As a visitor
When I visit '/books'
Then I see each book in the system including the book's attributes
(data from each column that is on the book table)

[x] done

User Story 4, Books Show 

As a visitor
When I visit '/books/:id'
Then I see the book with that id including the book's attributes
(data from each column that is on the book table)

[x] done

User Story 5, Author Books Index 

As a visitor
When I visit '/authors/:author_id/books'
Then I see each book that is associated with that author with each book's attributes
(data from each column that is on the books table)

* ActiveRecord

[x] done

User Story 6, Author Index sorted by Most Recently Created 

As a visitor
When I visit the Author index,
I see that records are ordered by most recently created first
And next to each of the records I see when it was created

[x] done

User Story 7, Author Book Count

As a visitor
When I visit a Author's show page
I see a count of the number of Books associated with this Author

* Usability 

[x] done

User Story 8, Books Index Link

As a visitor
When I visit any page on the site
Then I see a link at the top of the page that takes me to the Books Index

[x] done

User Story 9, Authors Index Link

As a visitor
When I visit any page on the site
Then I see a link at the top of the page that takes me to the Authors Index

[x] done

User Story 10, Authors Books Index Link

As a visitor
When I visit a Authors show page ('/authors/:id')
Then I see a link to take me to that Author's `books` page ('/authors/:id/books')

* Iteration 2

* CRUD 

[x] done

User Story 11, Author Creation 

As a visitor
When I visit the Authors Index page
Then I see a link to create a new Author record, "New Authors"
When I click this link
Then I am taken to '/authors/new' where I  see a form for a new Author record
When I fill out the form with a new Author's attributes:
And I click the button "Create Author" to submit the form
Then a `POST` request is sent to the '/authors' route,
a new Author record is created,
and I am redirected to the Authors Index page where I see the new Author displayed.

[x] done

User Story 12, Author Update 

As a visitor
When I visit a Authors show page
Then I see a link to update the Author "Update Author"
When I click the link "Update Author"
Then I am taken to '/authors/:id/edit' where I  see a form to edit the Author's attributes:
When I fill out the form with updated information
And I click the button to submit the form
Then a `PATCH` request is sent to '/authors/:id',
the Author's info is updated,
and I am redirected to the Author's Show page where I see the Author's updated info

[x] done

User Story 13, Author Book Creation 

As a visitor
When I visit a Authors Books Index page
Then I see a link to add a new book for that Author "Create Books"
When I click the link
I am taken to '/authors/:author_id/books/new' where I see a form to add a new Book
When I fill in the form with the Books's attributes:
And I click the button "Create Books"
Then a `POST` request is sent to '/authors/:author_id/books',
a new Books object/row is created for that Author,
and I am redirected to the Authors Books Index page where I can see the new Book listed

[x] done

User Story 14, book Update 

As a visitor
When I visit a book Show page
Then I see a link to update that book "Update book"
When I click the link
I am taken to '/books/:id/edit' where I see a form to edit the book's attributes:
When I click the button to submit the form "Update book"
Then a `PATCH` request is sent to '/books/:id',
the book's data is updated,
and I am redirected to the book Show page where I see the book's updated information

* ActiveRecord 

[x] done

User Story 15, books Index only shows `true` Records 

As a visitor
When I visit the books index
Then I only see records where the boolean column is `true`

[x] done

User Story 16, Sort Author's books in Alphabetical Order by name 

As a visitor
When I visit the Author's books Index Page
Then I see a link to sort books in alphabetical order
When I click on the link
I'm taken back to the Author's books Index Page where I see all of the Author's books in alphabetical order

* Usability 

[ ] done

User Story 17, Author Update From Author Index Page 

As a visitor
When I visit the Author index page
Next to every Author, I see a link to edit that Author's info
When I click the link
I should be taken to that Author's edit page where I can update its information just like in User Story 12

[ ] done

User Story 18, book Update From books Index Page 

As a visitor
When I visit the `book` index page or a author `book` index page
Next to every book, I see a link to edit that book's info
When I click the link
I should be taken to that `book` edit page where I can update its information just like in User Story 14

* Iteration 3

* CRUD

[ ] done

User Story 19, author Delete 

As a visitor
When I visit a author show page
Then I see a link to delete the author
When I click the link "Delete author"
Then a 'DELETE' request is sent to '/authors/:id',
the author is deleted, and all book records are deleted
and I am redirected to the author index page where I no longer see this author

[ ] done

User Story 20, book Delete 

As a visitor
When I visit a book show page
Then I see a link to delete the book "Delete book"
When I click the link
Then a 'DELETE' request is sent to '/books/:id',
the book is deleted,
and I am redirected to the book index page where I no longer see this book

* Active Record

[ ] done

User Story 21, Display Records Over a Given Threshold 

As a visitor
When I visit the author's books Index Page
I see a form that allows me to input a number value
When I input a number value and click the submit button that reads 'Only return records with more than `number` of `column_name`'
Then I am brought back to the current index page with only the records that meet that threshold shown.

* Usability

[ ] done

User Story 22, author Delete From author Index Page 

As a visitor
When I visit the authors index page
Next to every author, I see a link to delete that author
When I click the link
I am returned to the author Index Page where I no longer see that author

[ ] done

User Story 23, book Delete From books Index Page 

As a visitor
When I visit the `books` index page or a author `book` index page
Next to every book, I see a link to delete that book
When I click the link
I should be taken to the `book` index page where I no longer see that book

# relational_authors
