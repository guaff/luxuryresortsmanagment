class AdminController < ApplicationController
  
  def index
    
  end
  
  def locations
    @locations = Location.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @locations }
    end
  end
  
  def cities
    @cities = City.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cities }
    end
  end
end
