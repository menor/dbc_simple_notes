get '/' do
  @notes = Note.all
  erb :index
end

get '/notes/new' do
  # return a form for creating a new note
end

get 'notes/:id/edit' do
  # return a form for updating a note
end

get 'notes/:id' do
  # display a specific note
end

get '/notes/' do
  @notes = Note.all
  erb :list_notes
end

post '/notes' do
  Note.create(content: params[:content])
  redirect '/'
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