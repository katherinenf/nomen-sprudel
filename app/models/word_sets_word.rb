class WordSetsWord < ApplicationRecord
  belongs_to :word
  belongs_to :word_set
end
