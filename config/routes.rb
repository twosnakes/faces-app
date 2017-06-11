Rails.application.routes.draw do
  
  # users routes 
  

  get '/users' => 'users#new'
  post '/users' => 'users#create'

  get '/users/:id' => 'users#show'

  get '/users/:id/edit' => 'users#edit'
  patch '/users/:id' => 'users#update'

  delete '/users:id' => 'users#destroy'


  # projects routes
  get '/projects' => 'projects#index'

  get '/users/:user_id/projects' => 'projects#user_index'

  get '/users/:user_id/projects/new' => 'projects#new'
  post '/users/:user_id/projects' => 'projects#create'

  get '/users/:user_id/projects/:id' => 'projects#show'

  get '/users/:user_id/projects/:id/edit' => 'projects#edit'
  patch '/users/:user_id/projects/:id' => 'projects#update'

  delete '/users/:user_id/projects/:id' => 'projects#destroy'




 
end
