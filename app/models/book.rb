class Book < ApplicationRecord
  validates_presence_of :title,
                        :published
                        
  validates :in_print, inclusion: [true, false]
            
  validates :translated_english, inclusion: [true, false]

  belongs_to :author

end