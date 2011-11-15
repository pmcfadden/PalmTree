# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Project.create(project_name: "Fitness 2", contact_email: "pat@example.com", contact_name: "patrick")
Project.create(project_name: "Loyalty R2", contact_email: "mike@example.com", contact_name: "mike")
Survey.create(date_of_survey: "01/06/2011".to_date, project_id: 2)
Survey.create(date_of_survey: "01/05/2011".to_date, project_id: 1)
