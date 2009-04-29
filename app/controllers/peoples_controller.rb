class PeoplesController < ApplicationController

  def create
    @people = People.new(params[:people])

    respond_to do |format|
      if @people.save
        format.html { redirect_to :controller => 'home', :action=> 'thank_contact' }       
      else
        format.html { render :controller => 'home', :action => 'contact' }
      end
    end
  end

end
