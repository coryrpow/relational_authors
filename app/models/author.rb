class Author < ApplicationRecord
  has_many :books

  validates_presence_of :name,
                        :born
                       
  validates :alive, inclusion: [true, false]

  def self.most_recently_created
    self.all.order(created_at: :asc)
  end

end