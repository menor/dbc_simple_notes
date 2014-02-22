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

get '/notes/:id/delete' do
  @note = Note.find(params[:id])
  erb :delete_note
end

get '/notes/:id' do
  @note = Note.find(params[:id])
  erb :single_note
  # Haven't been able to redirect if active record doesn't
  # find a record with that id
end

get '/notes/' do
  @notes = Note.all
  erb :list_notes
end

post '/notes' do
  Note.create(title: params[:title], content: params[:content])
  redirect '/'
end

put '/notes/:id' do
  note = Note.find params[:id]
  note.title = params[:title]
  note.content = params[:content]
  note.updated_at = Time.now
  note.save
  redirect '/'
end

delete '/notes/:id' do
  note = Note.find params[:id]
  note.destroy
  redirect '/'
end