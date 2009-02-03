class HomeController < ApplicationController
  
  def splash
    render :layout => "none"
  end
  
  def index
    @mailinglist = Mailinglist.new
  end
  
  def about
    
    
  end
  
  def contact
    
  end
  
  def gracias_mailinglist
    
  end
end
