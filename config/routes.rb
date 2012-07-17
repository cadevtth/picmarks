PicturesApp::Application.routes.draw do
  get "/pictures/new" => 'Pictures#new', :as => :new_picture
  
  get "/pictures" => "Pictures#index", :as => :pictures
  
  # def pictures_url
  #   return "http://mydomain.com/pictures"
  # end
  #
  # def pictures_path
  #   return "/pictures"
  # end
  
  post "/pictures" => 'Pictures#create', :as => :pictures
  
  get "/pictures/:id" => "Pictures#show", :as => :picture
  put "/pictures/:id" => "Pictures#update", :as => :picture
  delete "/pictures/:id" => 'Pictures#destroy', :as => :picture
  
  get "/pictures/:id/edit" => "Pictures#edit", :as => :edit_picture
  
end











