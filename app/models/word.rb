class Word < ApplicationRecord
  has_many :word_sets_words
  has_many :word_sets, through: :word_sets_words

  validates :english, presence: true, uniqueness: true
  validates :german, presence: true, uniqueness: true
  validates :article, presence: true, inclusion: %w[der die das]
  has_many :masteries
end
