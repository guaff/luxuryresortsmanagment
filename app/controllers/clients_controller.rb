class ClientsController < ApplicationController
  before_filter :login_required
  layout "admin"

  def show
    @client = Client.find(params[:id])
    @comment = Comment.new
    @comments = @client.comments
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @client }
    end
  end


  def new
    @client = Client.new
    @payment_types = ['Credit Card', 'Money Order', 'Cash']

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @client }
    end
  end


  def edit
    @client = Client.find(params[:id])
  end

  def create
    @client = Client.new(params[:client])

    respond_to do |format|
      if @client.save
        flash[:notice] = 'Client was successfully created.'
        format.html { redirect_to :controller => "admin", :action => "clients" }
        format.xml  { render :xml => @client, :status => :created, :location => @client }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @client.errors, :status => :unprocessable_entity }
      end
    end
  end

  def update
    @client = Client.find(params[:id])

    respond_to do |format|
      if @client.update_attributes(params[:client])
        flash[:notice] = 'Client was successfully updated.'
        format.html { redirect_to :controller => "admin", :action => "clients" }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @client.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @client = Client.find(params[:id])
    @client.destroy

    respond_to do |format|
      format.html { redirect_to :controller => 'admin', :action => 'clients' }
    end
  end
  
  def print
    @client = Client.find(params[:id])
    @rooms = @client.rooms.find(:all)
    #@resorts = @rooms.resort(:all)
    @date = Date.today
    render :layout => false
  end
  
  def credit_verification
    @client = Client.find(params[:id])
    @date = Date.today
    render  :layout => false
  end
  
  def email_welcome_package
    @client = Client.find(params[:id])
    @rooms = @client.rooms.find(:all)
    
    if @rooms == nil 
      flash[:notice] = "You must have a room associated with this client"
      redirect_to :back
    else 
      @date = Date.today

      ClientMailer.deliver_welcome_package(@client)
      ClientMailer.deliver_contract(@client, @rooms)
      ClientMailer.deliver_credit_card_verification(@client)

      flash[:notice] = "Welcome Package was email suscesfully"
      redirect_to :back
    end

  end
  
end
