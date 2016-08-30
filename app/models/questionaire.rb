class Questionaire < ApplicationRecord
  has_many :questions, foreign_key: :questionaire_id
end
