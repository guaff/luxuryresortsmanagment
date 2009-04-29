class CommentsController < ApplicationController
  before_filter :login_required
  layout false
  
  
  def create
    @comment = Comment.new(params[:comment])
    
    respond_to do |format|
      if @comment.save
        flash[:notice] = 'Comment was sucessfully created.'
        format.html { redirect_to :back}
      else
        format.html { render :action => 'new' }
      end
    end
  end
  
  
end