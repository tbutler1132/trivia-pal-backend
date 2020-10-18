class Score < ApplicationRecord
  validates_numericality_of :points
  belongs_to :user
end
