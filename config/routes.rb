Rails.application.routes.draw do
  # For details check out  https://guides.rubyonrails.org/routing.html
  root 'notes#index'

   get 'notes', to:"notes#index"
   get 'notes/new', to:"notes#new"
   get 'notes/:id', to:"notes#show"
   get 'notes/:id/edit', to:"notes#edit"
   
post 'notes', to:'notes#create'
put 'notes/:id', to:"notes#update"
patch 'notes/:id', to:"notes#update"
delete 'notes/:id', to:"notes#destroy"
end