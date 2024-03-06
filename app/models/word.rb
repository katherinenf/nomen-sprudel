class Word < ApplicationRecord
  belongs_to :word_set
  validates :english, presence: true, uniqueness: true
  validates :german, presence: true, uniqueness: true
  validates :article, presence: true, inclusion: %w[der die das]
end
