class Mistake < ApplicationRecord
    has_many :alternatives
    has_many :input_mistakes

    validates :mistaken_word, uniqueness: true
end
