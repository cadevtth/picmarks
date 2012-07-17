class PicturesController < ApplicationController
  
  def new
    
  end
  
  # CHALLENGE: Save the incoming url and note to the database
  # so we don't lose it when we refresh our page
  # HINT: Use the Picture model to insert a new row into the database.  
  def index
    @pictures = Picture.all
    
    p = Picture.new
    p.url = params[:url]
    p.notes = params[:note]
    p.save
    
    @url = params[:url]
  end
  
  def show
    @picture = Picture.find_by_id(params[:id])
  end
end











