PicturesApp::Application.routes.draw do
  get "/pictures/new" => 'Pictures#new'

  get "/pictures" => "Pictures#index"
  post "/pictures" => 'Pictures#create'
  
  get "/pictures/:id" => "Pictures#show"
  put "/pictures/:id" => "Pictures#update"
  
  get "pictures/edit/:id" => "Pictures#edit"
  
end
