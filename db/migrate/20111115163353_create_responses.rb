class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :question_response
      t.text :response_explanation
      t.references :question

      t.timestamps
    end
  end
end
