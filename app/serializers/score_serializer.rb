class ScoreSerializer < ActiveModel::Serializer
  attributes :id, :points, :user

  belongs_to :user
end
