class AdminController < ApplicationController
  before_filter :login_required
  
  def locations
    @locations = Location.paginate :page => params[:page], :order => 'name asc', :per_page => 10
  end
  
  def cities
    @cities = City.paginate :page => params[:page], :order => 'name asc', :per_page => 10
  end
  
  def resorts
    @resorts = Resort.paginate :page => params[:page], :order => 'name asc', :per_page => 10
  end
  
  def unit_sizes
    @unit_sizes = UnitSize.find(:all)
  end
  
  def rooms
    @rooms = Room.paginate :page => params[:page],  :per_page => 10, :include => [:unit_size]
  end
  
  def clients
    @client = Client.new
    @clients = Client.paginate :page => params[:page], :order => 'full_name asc', :per_page => 10
  end
  
  def blogs
    @blogs = Blog.paginate :page => params[:page], :per_page => 10
  end
  
  def search_client
    @clients = Client.search(params[:search])
  end
end
