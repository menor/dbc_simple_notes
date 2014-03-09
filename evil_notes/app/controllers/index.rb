get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/todos' do
  @todos = Todo.all
  erb :todos
end

post '/todos' do
  Todo.create(params)
  redirect '/todos'
end

get '/info' do
  Demo.new(self).info
end
