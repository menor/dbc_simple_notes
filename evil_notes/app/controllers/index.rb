get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/todos/:id/edit' do
  @todo = Todo.find(params[:id])
  erb :update_form
end

get '/todos' do
  @todos = Todo.all
  erb :todos
end

post '/todos' do
  Todo.create(params)
  redirect '/todos'
end

put '/todos/:id' do
  todo = Todo.find(params[:id])
  todo.title = params[:title]
  todo.content = params[:content]
  todo.save
  redirect '/'
end
