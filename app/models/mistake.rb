class Mistake < ApplicationRecord
    has_many :alternatives
    has_many :input_mistakes
end
