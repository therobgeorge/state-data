Rails.application.routes.draw do
  get "/states" => "states#index"
  get "/states/:id" => "states#show"
end
