class ResortsController < ApplicationController
  layout  "admin", :except => [:show, :index]
  layout "application", :except => [ :new, :edit, :update]

  def index
    @resorts = Resort.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @resorts }
    end
  end

  # GET /resorts/1
  # GET /resorts/1.xml
  def show
    @resort = Resort.find(params[:id])
    @rooms = @resort.rooms.find(:all)
    @room = Room.new
    @mailinglist = Mailinglist.new
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @resort }
    end
  end

  # GET /resorts/new
  # GET /resorts/new.xml
  def new
    @resort = Resort.new
    render :layout => "admin"
    
  end

  # GET /resorts/1/edit
  def edit
    @resort = Resort.find(params[:id])
  end

  # POST /resorts
  # POST /resorts.xml
  def create
    @resort = Resort.new(params[:resort])

    respond_to do |format|
      if @resort.save
        flash[:notice] = 'Resort was successfully created.'
        format.html { redirect_to :controller => "admin", :action => "resorts" }
        format.xml  { render :xml => @resort, :status => :created, :location => @resort }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @resort.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /resorts/1
  # PUT /resorts/1.xml
  def update
    @resort = Resort.find(params[:id])

    respond_to do |format|
      if @resort.update_attributes(params[:resort])
        flash[:notice] = 'Resort was successfully updated.'
        format.html { redirect_to :controller => "admin", :action => "resorts" }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @resort.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /resorts/1
  # DELETE /resorts/1.xml
  def destroy
    @resort = Resort.find(params[:id])
    @resort.destroy

    respond_to do |format|
      format.html { redirect_to :controller => "admin", :action => "rooms" }
    end
  end

end
