Rails.application.routes.draw do

  # get "/state_abbreviation" => "state_abbreviation#index"
  get "/states" => "states#index"
  get "/states/:id" => "states#show"

  get "/state_abbreviations" => "state_abbreviations#index"
  get "/state_abbreviations/:id" => "state_abbreviations#show"
end
