get '/' do
  # Look in app/views/index.erb
  erb :index
end


get '/notes/new' do
  
end

get '/notes' do
  # display a list of all notes
end

patch 'notes/:id' do
# update a specific note
end

delete 'notes/id' do
  # delete a specific note
  # needs confirmation
end


# get '/bands' do
#   @band_names = Band.all.map(&:name)
#   erb :bands
# end

# post '/bands' do
#   new_band = Band.create!(name: params[:name])
#   new_band.name
# end

# get '/info' do
#   Demo.new(self).info
# end