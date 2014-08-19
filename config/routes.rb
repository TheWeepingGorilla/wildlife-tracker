Rails.application.routes.draw do
  match('species', {:via => :get, :to => 'species#index'})
  match('species', {:via => :post, :to => 'species#create'})
  match('species/new', {:via => :get, :to => 'species#new'})
  match('species/:id', {:via => :get, :to => 'species#show'})
  match('species/:id', {:via => :delete, :to => 'species#destroy'})

  match('regions', {:via => :get, :to => 'regions#index'})
  match('regions', {:via => :post, :to => 'regions#create'})
  match('regions/new', {:via => :get, :to => 'regions#new'})
  match('regions/:id', {:via => :get, :to => 'regions#show'})
  match('regions/:id', {:via => :delete, :to => 'regions#destroy'})

  match('sightings', {:via => :get, :to => 'sightings#index'})
  match('sightings', {:via => :post, :to => 'sightings#create'})
  match('sightings/new', {:via => :get, :to => 'sightings#new'})
  match('sightings/:id', {:via => [:patch, :put], :to => 'sightings#update'})
  match('sightings/:id', {:via => :get, :to => 'sightings#show'})
  match('sightings/:id', {:via => :delete, :to => 'sightings#destroy'})
  match('sightings/:id/edit', {:via => :get, :to => 'sightings#edit'})
end
