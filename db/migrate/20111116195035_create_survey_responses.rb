class CreateSurveyResponses < ActiveRecord::Migration
  def change
    create_table :survey_responses do |t|
      t.references :survey
      t.references :response

      t.timestamps
    end
  end
end
