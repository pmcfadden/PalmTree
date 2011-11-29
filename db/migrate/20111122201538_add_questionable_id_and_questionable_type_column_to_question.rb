class AddQuestionableIdAndQuestionableTypeColumnToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :questionable_id, :integer
    add_column :questions, :questionable_type, :string
  end
end
