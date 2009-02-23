class Notifier < ActionMailer::Base
    
  def send_mail(recipient)
    subject       "Concierge Singup"
    recipients    recipient
    from          "ivan@luxuryresortmanagement.com"
    sent_on       Time.now
    content_type  "multipart/alternative"
    
    part  :content_type => "text/plain",
          :body => render_message("concierge")
  end
  
end