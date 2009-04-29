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
  
  def send_express_interest(room,name,email,phone_number)
    subject         "Somebody is interested"
    recipients      "contracts@luxuryresortmanagement.com"
    from            "contracts@luxuryresortmanagement.com"
    sent_on         Time.now
    body            :room => room, :name => name, :email => email, :phone_number => phone_number
    content_type    "text/html"
  
  end
  
end