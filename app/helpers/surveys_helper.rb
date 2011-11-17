module SurveysHelper
  def format_month_and_year(survey)
    survey.date_of_survey.strftime('%B %Y')
  end

  def build_date_from_params(field_name, params)
    Date.new(params["#{field_name.to_s}(1i)"].to_i,
    params["#{field_name.to_s}(2i)"].to_i,
    params["#{field_name.to_s}(3i)"].to_i)
  end
end
