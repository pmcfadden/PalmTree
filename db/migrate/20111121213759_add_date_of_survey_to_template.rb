class AddDateOfSurveyToTemplate < ActiveRecord::Migration
  def change
    add_column :templates, :date_of_survey, :date
  end
end
