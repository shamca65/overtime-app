class ManagerMailer < ApplicationMailer
  #email maps to name of file
  def email manager
    @manager = manager
    mail(to: manager.email, subject: 'Daily Hours Reporting')
  end
end