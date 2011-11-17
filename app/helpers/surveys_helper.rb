module SurveysHelper
  def format_month_and_year(survey)
    survey.date_of_survey.strftime('%B %Y')
  end
end
