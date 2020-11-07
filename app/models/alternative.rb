class Alternative < ApplicationRecord
  belongs_to :mistake

  validates :alternative_word, format: {with: /[a-zA-z]/}
end
