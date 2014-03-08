require 'spec_helper'

describe Todo do
  subject { FactoryGirl.create(:todo) }

  its(:title) { should == 'Conquer Andorra' }
  its(:content) { should == 'Andorra is the key to invade France' }
  its(:title) { validate_uniqueness_of(:title)  }

  # context 'a duplicate title' do
  #   first = FactoryGirl.create(:todo)
  #   second = FactoryGirl.create(:todo)
  #   expect{ second }.to_not be_valid
  # end

  
end