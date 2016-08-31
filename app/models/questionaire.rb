class Questionaire < ApplicationRecord
  has_many :questions, foreign_key: :questionaire_id, inverse_of: :questionaire
  accepts_nested_attributes_for :questions, :reject_if => :all_blank

end
