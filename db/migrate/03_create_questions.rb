class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :question
      t.string :difficulty
      t.string :category
      t.string :q_type
      t.string :correct_answer
      t.text :incorrect_answers, array: true, default: []

      t.timestamps
    end
  end
end
