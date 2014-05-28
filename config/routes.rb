TreeLeaf::Application.routes.draw do

  root 'sessions#index'
  get "/sessions/:year/:month/:day" => "days#show"

end
