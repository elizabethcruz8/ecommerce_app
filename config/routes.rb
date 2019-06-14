Rails.application.routes.draw do
  namespace :api do 

    get "/shoes" => "shoes#index"
    post "/shoes" => "shoes#create"
    get "/shoes/:id" => "shoes#show"
    patch "/shoes/:id" => "shoes#update"
    delete "/shoes/:id" => "shoes#destroy"
  end 
end
