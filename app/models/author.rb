class Author < ApplicationRecord
  validates_presence_of :name,
                        :born
                       
  validates :alive, inclusion: [true, false]

  has_many :books

end