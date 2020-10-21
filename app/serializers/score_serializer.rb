class ScoreSerializer < ActiveModel::Serializer
  attributes :id, :points, :user, :category, :difficulty, :questions

  belongs_to :user
end
