class Input < ApplicationRecord
    has_many :input_mistakes
    has_many :mistakes, through: :input_mistakes
    has_many :alternatives, through: :mistakes

    validates :text, presence: true
end
