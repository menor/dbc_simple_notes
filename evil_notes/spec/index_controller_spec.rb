require 'spec_helper'

describe "IndexController" do

  before(:each) do 
    FactoryGirl.create(:todo)
  end

  describe 'get all todos' do
    it 'should see all todos' do
      get "/todos"
      expect(last_response).to be_ok
    end
  end

  describe 'create a new todo' do
    title = 'Kick out the Jams'
    content = 'Mother...'
    new_params = {
        title: title,
        content: content
      }
    it 'should add a new todo' do
      expect{
        post('/todos', new_params, )
      }.to change(Todo, :count).by(1)
    end
  end

  describe 'update a note' do
      title = 'Kick out the Gems'
      content = 'Mother...'
      new_params = {
        title: title,
        content: content
      }
      it 'should change a note title' do
      expect{
        put('/todos/1', new_params )
      }.to change(Todo.find(1), :title).to include('Gems')
    end
  end

end
