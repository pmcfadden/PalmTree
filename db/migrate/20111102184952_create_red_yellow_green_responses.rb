class CreateRedYellowGreenResponses < ActiveRecord::Migration
  def change
    create_table :red_yellow_green_responses do |t|
      t.string :answer
      t.text :explanation
      t.integer :question_id

      t.timestamps
    end
  end
end
