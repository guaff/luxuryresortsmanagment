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
  
  def contract(client, rooms)
    recipients  client.email
    from        "Luxury Resort Management <contracts@luxuryresortmanagement.com>"
    subject     "Contract"
    body        :client => client, :rooms => rooms
    content_type  "text/html"
  end
  
end
