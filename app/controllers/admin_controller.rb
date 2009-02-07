class AdminController < ApplicationController
  before_filter :login_required
  def index
    
  end
  
  def locations
    @locations = Location.find(:all)
  end
  
  def cities
    @cities = City.find(:all)
  end
  
  def resorts
    @resorts = Resort.find(:all)
  end
  
  def unit_sizes
    @unit_sizes = UnitSize.find(:all)
  end
  
  def rooms
    @rooms = Room.find(:all)
  end
  
end
