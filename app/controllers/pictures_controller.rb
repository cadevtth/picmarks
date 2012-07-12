class PicturesController < ApplicationController
  
  def all_pictures
    return ["http://2.cdn.nhle.com/nhl/images/upload/2012/07/RAYMOND_205v2_070912.jpg",
      "http://2.cdn.nhle.com/nhl/images/upload/2010/04/doanIMprov26.jpg",
      "http://2.cdn.nhle.com/blackhawks/images/upload/2012/04/identity-banner-no-att.jpg"]
  end
  
  def index
    @pictures = all_pictures
  end
  
  def show
    pictures = all_pictures
    
    id = params[:id].to_i
    
    @url = pictures[id]          
  end
end











