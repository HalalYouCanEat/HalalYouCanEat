class ApplicationMailer < ActionMailer::Base
  default from: ENV['EMAIL-USERNAME']
  layout 'mailer'
end
