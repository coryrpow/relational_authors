class Author < ApplicationRecord
  has_many :books

  validates_presence_of :name,
                        :born
                       
  validates :alive, inclusion: [true, false]

  def self.order_by_created_at
    self.all.order(created_at: :asc)
  end

end