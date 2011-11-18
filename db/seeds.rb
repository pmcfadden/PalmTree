# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Account.create(account_name: "ThoughtWorks", account_contact: "pemcfadden@gmail.com")
Account.create(account_name: "Studios", account_contact: "pemcfadden@gmail.com")
Project.create(project_name: "Fitness 2", contact_email: "pmcfadde@thoughtworks.com", contact_name: "patrick", project_id: 1)
Project.create(project_name: "Loyalty R2", contact_email: "pmcfadde@thoughtworks.com", contact_name: "mike", project_id: 2)
Survey.create(date_of_survey: "01/06/2011".to_date, project_id: 2)
Survey.create(date_of_survey: "01/05/2011".to_date, project_id: 1)
Question.create(question_text: "this is a question for first survey", survey_id: 1, question_type: "Rating") 
Question.create(question_text: "this is a question for second survey", survey_id: 2, question_type: "Boolean") 
Response.create(question_id: 1)
Response.create(question_id: 2)
