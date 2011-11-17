class ProjectMailer < ActionMailer::Base
  default from: "from@example.com"

  def survey_email(project)
    @project = project
    mail(:to => @project.contact_email, :subject => "Delivery Status Update")
  end
end
