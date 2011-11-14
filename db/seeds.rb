# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Survey.create(date_of_survey: "01/05/2011".to_date)
Survey.create(date_of_survey: "01/06/2011".to_date)
Question.create(question_text: "My new question1", survey_id: 1)
Question.create(question_text: "My new question2", survey_id: 1)
Question.create(question_text: "My new question3", survey_id: 2)
Question.create(question_text: "My new question4", survey_id: 2)
Project.create(project_name: "my project", contact_email: "pat@example.com", contact_name: "patrick")
Project.create(project_name: "my second project", contact_email: "mike@example.com", contact_name: "mike")
