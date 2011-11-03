class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.date :date_of_survey

      t.timestamps
    end
  end
end
