class PicturesController < ApplicationController
  def all_pictures
    return [
      { :url => 'http://www.w3.org/html/logo/downloads/HTML5_Logo_512.png', :note => 'HTML5' },
      { :url => 'http://www.ruby-camping.com/img/slides/ruby.png', :note => 'Ruby' },
      { :url => 'http://www.bugtreat.com/blog/wp-content/uploads/2012/06/ruby-on-rails-logo.png', :note => 'Rails' }
      ]
  end
  
  def new
    
  end
  
  
  def index
    @pictures = Picture.all  # We're now using a database instead of the hardcode data
    @url = params[:url]
  end
  
  def show
    pictures = all_pictures
    
    id = params[:id].to_i
    
    @url = pictures[id][:url]
    @note = pictures[id][:note]
  end
end











