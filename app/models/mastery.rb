class Mastery < ApplicationRecord
  belongs_to :user
  belongs_to :word
end
