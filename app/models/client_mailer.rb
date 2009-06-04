class ClientMailer < ActionMailer::Base
  
  def welcome_package(client)
    recipients  client.email
    from        "Luxury Resort Management <contracts@luxuryresortmanagement.com>"
    subject     "Welcome Package"
    body        :client => client
    content_type  "text/html"
  end
  
  def credit_card_verification(client)
    recipients  client.email
    from        "Luxury Resort Management <contracts@luxuryresortmanagement.com>"
    subject     "Credit Card Verification"
    body        :client => client
    content_type  "text/html"
  end
  
  def contract(client, rooms, date)
    recipients  client.email
    from        "Luxury Resort Management <contracts@luxuryresortmanagement.com>"
    subject     "Contract"
    body        :client => client, :rooms => rooms, :date => date
    content_type  "text/html"
  end
  
  def physical_card_notification(client)
    recipients    "Luxury Resort MAnagement <optin@luxuryresortmanagement.com>"
    from          "Luxury Resort MAnagement <contracts@luxuryresortmanagement.com>"
    subject       "Somebody Signup from a Physical Card"
    body          :client => client
    content_type  "text/html"
  end
  
  def physical_card_thank_you(client)
    recipients    client.email
    from          "Luxury Resort Management <contracts@luxuryresortmanagement.com>"
    subject       "Thank you for Registering" 
    body          :client => client
    content_type  "text/html"
  end
  
  def physical_card_optout(client)
    recipients    "Luxury Resort Management <optout@luxuryresrotmanagement.com>"
    from          "Luxury Resort Management <contracts@luxuryresortmanagement.com>"
    subject       "Opt-Out"
    body          :client => client
    content_type  "text/html"
  end
  
end