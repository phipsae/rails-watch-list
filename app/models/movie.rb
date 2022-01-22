class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, :overview, uniqueness: true, presence: true
end

# should not be able to destroy self if has bookmarks children (FAILED - 12)
