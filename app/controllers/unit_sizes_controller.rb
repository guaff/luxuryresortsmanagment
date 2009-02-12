class UnitSizesController < ApplicationController

  before_filter :login_required
  
  
  def show
    @unit_size = UnitSize.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @unit_size }
    end
  end

  # GET /unit_sizes/new
  # GET /unit_sizes/new.xml
  def new
    @unit_size = UnitSize.new
    render :layout => "admin"
  end

  # GET /unit_sizes/1/edit
  def edit
    @unit_size = UnitSize.find(params[:id])
    render :layout => "admin"
  end

  # POST /unit_sizes
  # POST /unit_sizes.xml
  def create
    @unit_size = UnitSize.new(params[:unit_size])

    respond_to do |format|
      if @unit_size.save
        flash[:notice] = 'UnitSize was successfully created.'
        format.html { redirect_to :controller => "admin", :action => "unit_sizes" }
        format.xml  { render :xml => @unit_size, :status => :created, :location => @unit_size }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @unit_size.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /unit_sizes/1
  # PUT /unit_sizes/1.xml
  def update
    @unit_size = UnitSize.find(params[:id])

    respond_to do |format|
      if @unit_size.update_attributes(params[:unit_size])
        flash[:notice] = 'UnitSize was successfully updated.'
        format.html { redirect_to :controller => "admin", :action => "unit_sizes" }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @unit_size.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /unit_sizes/1
  # DELETE /unit_sizes/1.xml
  def destroy
    @unit_size = UnitSize.find(params[:id])
    @unit_size.destroy

    respond_to do |format|
      format.html { redirect_to(unit_sizes_url) }
      format.xml  { head :ok }
    end
  end
end
