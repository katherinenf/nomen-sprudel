class WordSet < ApplicationRecord
  has_many :word_sets_words
  has_many :words, through: :word_sets_words
  validates :name, presence: true, uniqueness: true
end
