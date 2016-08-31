class Question < ApplicationRecord
  belongs_to :questionaire, inverse_of: :questions
  validates :questionaire, presence: true

end
