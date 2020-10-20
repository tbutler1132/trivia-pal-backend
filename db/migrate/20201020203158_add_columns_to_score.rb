class AddColumnsToScore < ActiveRecord::Migration[6.0]
  def change
    add_column :scores, :category, :string
    add_column :scores, :difficulty, :string
    add_column :scores, :questions, :integer
  end
end
