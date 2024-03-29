class CitiesController < ApplicationController

  
  before_filter :login_required, :except => [:show, :index]
  
  layout "application"
  
  def index
    @cities = City.find(:all)
    @cities_count_divided = @cities.size/3

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @cities }
    end
  end

  # GET /cities/1
  # GET /cities/1.xml
  def show
    @city = City.find(params[:id])
    @resorts = @city.resorts.find(:all)
    @resorts_count_divided = @resorts.size/3
  end

  # GET /cities/new
  # GET /cities/new.xml
  def new
    @city = City.new
    respond_to do |format|
      format.html { render :layout => "admin" }
      format.xml  { render :xml => @city }
    end
    
  end

  # GET /cities/1/edit
  def edit
    @city = City.find(params[:id])
    @locations = Location.find(:all)
    render :layout => "admin"
  end

  # POST /cities
  # POST /cities.xml
  def create
    @city = City.new(params[:city])

    respond_to do |format|
      if @city.save
        flash[:notice] = 'City was successfully created.'
        format.html { redirect_to :controller => "admin", :action => "cities" }
        format.xml  { render :xml => @city, :status => :created, :location => @city }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @city.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /cities/1
  # PUT /cities/1.xml
  def update
    @city = City.find(params[:id])

    respond_to do |format|
      if @city.update_attributes(params[:city])
        flash[:notice] = 'City was successfully updated.'
        format.html { redirect_to :controller => "admin", :action => "cities" }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @city.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /cities/1
  # DELETE /cities/1.xml
  def destroy
    @city = City.find(params[:id])
    @city.destroy

    respond_to do |format|
      format.html { redirect_to :controller => "admin", :action => "cities" }
      format.xml  { head :ok }
    end
  end
end
