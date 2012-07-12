PicturesApp::Application.routes.draw do
  get "/pictures/new", :controller => "Pictures", :action => "new"

  get "/pictures" => "Pictures#index"
  
  get "/pictures/:id" => "Pictures#show"
  
end
