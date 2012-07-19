class PicturesController < ApplicationController
  
  def destroy
    @picture = Picture.find_by_id(params[:id])
    @picture.destroy
    redirect_to pictures_url
  end
  
  def edit
    @picture = Picture.find_by_id(params[:id])
  end
  
  # Parameters: {"utf8"=>"✓", "authenticity_token"=>"idOnHqsHYcXDl1FXwczguOhp8/2Ab8WU8l90qMQdebY=", "picture"=>{"url"=>"http://chicago.cubs.mlb.com/images/2011/08/30/G4WBJp4U.jpg", "notes"=>"Winning"}, "commit"=>"Update Picture", "id"=>"19"}
  # 
  def update
    @picture = Picture.find_by_id(params[:id])
    @picture.url = params[:picture][:url]
    @picture.notes = params[:picture][:notes]
    @picture.save
    redirect_to picture_url(@picture.id)
  end
  
  def new
    @picture = Picture.new
  end
  
  def create
    p = Picture.new
    p.url = params[:picture][:url]
    p.notes = params[:picture][:note]
    p.save
    
    redirect_to "http://localhost:3000/pictures"
  end
  
  # CHALLENGE: Move the creation code to
  # its own action.  Use POST on the form
  # to route to another action called "create".
  
  def index
    @pictures = Picture.all
  end
  
  def show
    @picture = Picture.find_by_id(params[:id])
  end
end











