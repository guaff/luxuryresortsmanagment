class RoomsController < ApplicationController

  before_filter :login_required, :except => ['show', 'express_interest']
  
  def index
    @rooms = Room.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @rooms }
    end
  end

  # GET /rooms/1
  # GET /rooms/1.xml
  def show
    @room = Room.find(params[:id])

    respond_to do |format|
      format.html { }
      format.xml  { render :xml => @room }
    end
  end

  # GET /rooms/new
  # GET /rooms/new.xml
  def new
    @room = Room.new
    @room.client_id = params[:client_id]
    render :layout => false
  end

  # GET /rooms/1/edit
  def edit
    @room = Room.find(params[:id])
    render :layout => "admin"    
  end

  # POST /rooms
  # POST /rooms.xml
  def create
    @room = Room.new(params[:room])

    respond_to do |format|
      if @room.save
        flash[:notice] = 'Room was successfully created.'
        format.html { redirect_to :controller => "admin", :action => "rooms" }
      else
        flash[:errors] = 'Ups. There are errors in your submission.'
        format.html { render :action => "new" }
      end
    end
  end

  # PUT /rooms/1
  # PUT /rooms/1.xml
  def update
    @room = Room.find(params[:id])

    respond_to do |format|
      if @room.update_attributes(params[:room])
        flash[:notice] = 'Room was successfully updated.'
        format.html { redirect_to :controller => "admin", :action => "rooms" }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @room.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rooms/1
  # DELETE /rooms/1.xml
  def destroy
    @room = Room.find(params[:id])
    @room.destroy

    respond_to do |format|
      format.html { redirect_to :controller => 'admin', :action => 'rooms' }
      format.xml  { head :ok }
    end
  end
  
  def express_interest
    @room = Room.find(params[:room][:id])
    @name = params[:interested][:name]
    @phone_number = params[:interested][:phone_number]
    @email = params[:interested][:email]
    
    Notifier.deliver_send_express_interest(@room, @name, @email, @phone_number)
    flash[:notice] = "Thank you for expressing interest in this property. We've been notified about it"
    redirect_to :back
  end
end
