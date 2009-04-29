class MailinglistsController < ApplicationController

  # GET /mailinglists/1
  # GET /mailinglists/1.xml
  def show
    @mailinglist = Mailinglist.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @mailinglist }
    end
  end

  # GET /mailinglists/new
  # GET /mailinglists/new.xml
  def new
    @mailinglist = Mailinglist.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @mailinglist }
    end
  end

  # GET /mailinglists/1/edit
  def edit
    @mailinglist = Mailinglist.find(params[:id])
  end

  # POST /mailinglists
  # POST /mailinglists.xml
  def create
    @mailinglist = Mailinglist.new(params[:mailinglist])

    respond_to do |format|
      if @mailinglist.save
        flash[:notice] = ''
        format.html { redirect_to :controller => "home", :action => "gracias_mailinglist" }
        format.xml  { render :xml => @mailinglist, :status => :created, :location => @mailinglist }
      else
        format.html { render :controller => "home" , :action => "index" }
        format.xml  { render :xml => @mailinglist.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /mailinglists/1
  # PUT /mailinglists/1.xml
  def update
    @mailinglist = Mailinglist.find(params[:id])

    respond_to do |format|
      if @mailinglist.update_attributes(params[:mailinglist])
        flash[:notice] = 'Mailinglist was successfully updated.'
        format.html { redirect_to(@mailinglist) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @mailinglist.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /mailinglists/1
  # DELETE /mailinglists/1.xml
  def destroy
    @mailinglist = Mailinglist.find(params[:id])
    @mailinglist.destroy

    respond_to do |format|
      format.html { redirect_to(mailinglists_url) }
      format.xml  { head :ok }
    end
  end
end
