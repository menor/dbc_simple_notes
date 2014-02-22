require 'spec_helper'

describe "IndexController" do

  it "should allow accessing the home page" do
    get '/'
    last_response.should be_ok
  end

  describe 'create a new note' do
    new_note = {title: 'Conquer Andorra', content:'Andorra must be destroyed'}
    new_params = {
      title: new_note[:title],
      content: new_note[:content]
    }

    it 'should add a new note' do
      expect{
        post('/notes', new_params)
      }.to change(Note, :count).by(1)
      last_response.should be_ok
      last_response.body.should == new_note
    end
  end


  # describe 'get all bands' do
  #   it 'should see all bands' do
  #     get "/bands"
  #     expect(last_response).to be_ok
  #   end
  # end

  # describe 'create a new band' do
  #   band_name = 'chromatics'
  #   new_params = {
  #       name: band_name
  #     }
  #   new_session = {
  #     'rack.session' => {
  #       # Could preload stuff into the session here...
  #     }
  #   }
  #   it 'should add a new band' do
  #     expect{
  #       post('/bands', new_params, new_session)
  #     }.to change(Band, :count).by(1)
  #     last_response.should be_ok
  #     last_response.body.should == band_name
  #   end
  # end
end
