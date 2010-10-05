class BookmarkletsController < ApplicationController
  def generate
    bookmarklet = Bookmarklet.new(params[:bookmarklet])
    render :partial => "bookmarklets/bookmarklet", :locals => {:bookmarklet => bookmarklet}
  end
  
  def index
    @bookmarklets = Bookmarklet.all
  end
  
  def show
    @bookmarklet = Bookmarklet.find(params[:id])
  end
  
  def new
    @bookmarklet = Bookmarklet.new
  end
  
  def create
    @bookmarklet = Bookmarklet.new(params[:bookmarklet])
    if @bookmarklet.save
      flash[:notice] = "Successfully created bookmarklet."
      redirect_to @bookmarklet
    else
      render :action => 'new'
    end
  end
  
  def edit
    @bookmarklet = Bookmarklet.find(params[:id])
  end
  
  def update
    @bookmarklet = Bookmarklet.find(params[:id])
    if @bookmarklet.update_attributes(params[:bookmarklet])
      flash[:notice] = "Successfully updated bookmarklet."
      redirect_to @bookmarklet
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @bookmarklet = Bookmarklet.find(params[:id])
    @bookmarklet.destroy
    flash[:notice] = "Successfully destroyed bookmarklet."
    redirect_to bookmarklets_url
  end
end
