Rails.application.routes.draw do
  
  # users routes 
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/users/:id' => 'users#show' #blank project nothing started yet

  get '/users/:id/edit' => 'users#edit'
  patch '/users/:id' => 'users#update'

  delete '/users:id' => 'users#destroy'


  # projects routes
  get '/projects' => 'projects#index' #projects of multiple users

  get '/users/:user_id/projects' => 'projects#user_index' #projects of specific user

  get '/users/:user_id/projects/new' => 'projects#new'
  post '/users/:user_id/projects' => 'projects#create'

  get '/users/:user_id/projects/:id' => 'projects#show'
   # this is where a user goes after they have logged in gone to blank page and decided to create a new project

  get '/users/:user_id/projects/:id/edit' => 'projects#edit'
  patch '/users/:user_id/projects/:id' => 'projects#update'

  delete '/users/:user_id/projects/:id' => 'projects#destroy'

  #session routes
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  namespace :api do
    namespace :v1 do
      get '/projects/:id' => 'faces#show'
      patch '/projects/:id' => 'faces#update'
      delete '/projects/:id' => 'faces#destroy'
    end
  end




 
end
