class SendMail < ActionMailer::Base
  default from: 'pennonestoplearning@gmail.com'

  def sample_email(com, user)    
  	@feedback_user = user.email
  	@comment = com
  	mail(to: 'sarveshsurana@gmail.com,sahanavp1@gmail.com,rhea1093@gmail.com', subject: 'OneStopLearn Feedback')
    end
end