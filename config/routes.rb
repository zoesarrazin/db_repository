Rails.application.routes.draw do
  get '/new_user'=> "application#new"
  get'/create_users'=> "application#create"
  get'/user/:id'=> "application#show"
end