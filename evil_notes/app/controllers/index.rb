get '/' do
  @notes = Note.order("created_at DESC")
  erb :index
end

get '/notes/new' do
  # return a form for creating a new note
end

get '/notes/:id/edit' do
  @note = Note.find(params[:id])
  erb :update_note_form
end

get '/notes/:id' do
  # display a specific note
end

get '/notes/' do
  @notes = Note.all
  erb :list_notes
end

post '/notes' do
  Note.create(title: params[:title], content: params[:content])
  redirect '/'
end

patch '/notes/:id' do
# update a specific note
end

delete '/notes/id' do
  # delete a specific note
  # needs confirmation
end