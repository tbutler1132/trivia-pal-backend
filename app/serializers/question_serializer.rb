class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :question, :difficult, :category, :type, :correct_answer, :incorrect_answers
end
