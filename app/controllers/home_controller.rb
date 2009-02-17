class HomeController < ApplicationController
  
  def index
    @mailinglist = Mailinglist.new
    @locations = Location.find(:all)
    @cities = []
    @city = City.new
  end
  
  def update_city
    @cities = City.find_all_by_location_id(params[:id])
    @html = "<select id='id' name='id'>"
    @html += "<option value="">Select City</option>"
    @cities.each do |@city|
      @html += "<option value='#{@city.id}'>#{@city.name}</option>"
    end
    @html += "</select>"
    render :text =>  @html 
  end
  
  def search_city
    @city = City.find(params[:id])
    @resorts = @city.resorts.find(:all)
    @resorts_count_divided = @resorts.size/3
  end
  
  def concierge
    
  end
  
end
