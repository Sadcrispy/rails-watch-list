class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  # since I specified belongs to, I don't need to say movie_id in nextt line
  validates :movie, uniqueness: { scope: :list }
  validates :comment, length: { minimum: 6 }
end
