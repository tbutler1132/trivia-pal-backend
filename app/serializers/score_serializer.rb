class ScoreSerializer < ActiveModel::Serializer
  attributes :id, :score, :user

  belongs_to :user
end
