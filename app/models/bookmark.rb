class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :comment, length: { minimum: 6 }, presence: true
  # validates :movie_id, :list_id, presence: true
  # validates_uniqueness_of :movie_id, scope: [:list_id]
  validates :movie_id, uniqueness: { scope: :list_id, message: 'already in the list' }
end
