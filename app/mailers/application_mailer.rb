class ApplicationMailer < ActionMailer::Base
  default from: 'no-reply@game_list.com',
          return_path: 'contact@game_list.com'

  layout 'mailer'

  def email(to_address, subject, body)
    options = { to: to_address, subject: subject, body: body }
    mail options
  end
end
