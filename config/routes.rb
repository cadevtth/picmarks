PicturesApp::Application.routes.draw do
  
  get "/pictures" => "Pictures#index"
  
  get "/pictures/:id" => "Pictures#show" 
  
end
