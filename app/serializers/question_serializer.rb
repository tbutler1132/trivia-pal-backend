class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :question, :difficulty, :category, :q_type, :correct_answer, :incorrect_answers
end
